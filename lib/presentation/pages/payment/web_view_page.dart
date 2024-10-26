import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/application/auth/auth_bloc.dart';
import 'package:ticket_tree_client/application/payment/payment_bloc.dart';
import 'package:ticket_tree_client/application/profile/profile_bloc.dart';
import 'package:ticket_tree_client/application/tickets/tickets_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';
// #docregion platform_imports
// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
// #enddocregion platform_imports

class WebViewPage extends StatefulWidget {
  final String paymentUrl;
  const WebViewPage({super.key, required this.paymentUrl});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            debugPrint('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (String url) {
            debugPrint('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('''
            Page resource error:
            code: ${error.errorCode}
            description: ${error.description}
            errorType: ${error.errorType}
            isForMainFrame: ${error.isForMainFrame}
          ''');
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              debugPrint('blocking navigation to ${request.url}');
              return NavigationDecision.prevent;
            }
            debugPrint('allowing navigation to ${request.url}');
            return NavigationDecision.navigate;
          },
          onUrlChange: (UrlChange change) {
            debugPrint('url change to ${change.url}');
            bool isCompleted = change.url?.startsWith(
                    'https://app.yourwebpage.com/checkout/internal-id/success') ??
                false;

            if (isCompleted) {
              final uid = context.read<AuthBloc>().state.mapOrNull(
                    authenticated: (state) => state.uid,
                  );
              final paymentId = widget.paymentUrl.split('/').last;
              context.read<PaymentBloc>().add(PaymentEvent.completePayment(
                  uid: uid!, paymentId: paymentId));
              context.read<ProfileBloc>().add(ProfileEvent.getProfile(uid));
              context.pop();
            } else if (change.url?.startsWith(
                    'https://app.yourwebpage.com/checkout/internal-id/error') ??
                false) {
              context.read<PaymentBloc>().add(const PaymentEvent.failPayment());
              context.pop();
            }
          },
          onHttpAuthRequest: (HttpAuthRequest request) {
            openDialog(request);
          },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      )
      ..loadRequest(Uri.parse(widget.paymentUrl));

    // #docregion platform_features
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
    // #enddocregion platform_features

    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    // print("event id: ${widget.eventId}");
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: WebViewWidget(controller: _controller),
        // floatingActionButton: favoriteButton(),
      ),
    );
  }

  Future<void> openDialog(HttpAuthRequest httpRequest) async {
    final TextEditingController usernameTextController =
        TextEditingController();
    final TextEditingController passwordTextController =
        TextEditingController();

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('${httpRequest.host}: ${httpRequest.realm ?? '-'}'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextField(
                  decoration: const InputDecoration(labelText: 'Username'),
                  autofocus: true,
                  controller: usernameTextController,
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  controller: passwordTextController,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            // Explicitly cancel the request on iOS as the OS does not emit new
            // requests when a previous request is pending.
            TextButton(
              onPressed: () {
                httpRequest.onCancel();
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                httpRequest.onProceed(
                  WebViewCredential(
                    user: usernameTextController.text,
                    password: passwordTextController.text,
                  ),
                );
                Navigator.of(context).pop();
              },
              child: const Text('Authenticate'),
            ),
          ],
        );
      },
    );
  }
}

class OrderCompletedScreen extends StatefulWidget {
  final String eventName;
  final String basketId;
  const OrderCompletedScreen(
      {super.key, required this.basketId, required this.eventName});

  @override
  State<OrderCompletedScreen> createState() => _OrderCompletedScreenState();
}

class _OrderCompletedScreenState extends State<OrderCompletedScreen> {
  bool hasError = false;
  bool downloadStarted = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100.w,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
        child: Container(
          height: 60.h,
          width: 92.w,
          decoration: BoxDecoration(
              color: const Color(0xFF1C1C1E),
              borderRadius: BorderRadius.circular(3.w)),
          child: Column(children: [
            SizedBox(height: 4.h),
            CircleAvatar(
              backgroundColor: const Color(0xFF03BDBF).withOpacity(0.1),
              radius: 14.w,
              child: CircleAvatar(
                backgroundColor: const Color(0xFF03BDBF),
                radius: 10.5.w,
                child: const Icon(
                  Icons.done,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            const Text('Success!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 1.h),
            Text(
                downloadStarted
                    ? 'You have downloaded your ticket.'
                    : 'Congratulations! You got your tickets.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 4.h),
            SizedBox(
              height: 12.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!downloadStarted)
                    TextButton(
                        onPressed: () async {
                          // try {
                          //   setState(() {
                          //     isLoading = true;
                          //   });
                          //   String? voucherUrl =
                          //       await CooltixServices.getVoucherUrlByBasketId(
                          //           widget.basketId);
                          //   setState(() {
                          //     isLoading = false;
                          //   });
                          //   if (voucherUrl == null) {
                          //     setState(() {
                          //       hasError = true;
                          //     });
                          //     return;
                          //   }
                          //   context.read<EventProvider>().downloadVoucher(
                          //         voucherUrl,
                          //         widget.eventName,
                          //         context,
                          //       );
                          //   setState(() {
                          //     downloadStarted = true;
                          //   });
                          // } catch (e) {
                          //   // print(
                          //   //     '================================ Downloading Error from OrdercopletedScreen: $e');
                          //   setState(() {
                          //     isLoading = false;
                          //     // hasError = true;
                          //   });
                          // }
                        },
                        child: Text(
                          "Download Ticket".toUpperCase(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Back to Event".toUpperCase(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                ],
              ),
            ),
            const Text("Manage your ticket in Your Tickets anytime.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 4.h),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Close",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )),
          ]),
        ),
      ),
    );
  }
}
