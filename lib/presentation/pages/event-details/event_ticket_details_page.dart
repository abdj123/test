import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/application/payment/payment_bloc.dart';
import 'package:ticket_tree_client/presentation/routes/app_router.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../../domain/events/entities/ticket_rate.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/widgets/custom_elevated_button.dart';
import '../../core/widgets/custom_text_form_field.dart';

class EventTicketDetailsPage extends StatefulWidget {
  final TicketRate ticketRate;
  const EventTicketDetailsPage({super.key, required this.ticketRate});

  @override
  State<EventTicketDetailsPage> createState() => _EventTicketDetailsPageState();
}

class _EventTicketDetailsPageState extends State<EventTicketDetailsPage> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _addressController;
  late TextEditingController _genderController;

  @override
  void initState() {
    final profile = context.read<ProfileBloc>().state.mapOrNull(
          loaded: (value) => value.profile,
        );
    _nameController = TextEditingController(text: profile?.username);
    _emailController = TextEditingController(text: profile?.email);
    _phoneController = TextEditingController();
    _addressController = TextEditingController(text: profile?.city);
    _genderController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _genderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentBloc, PaymentState>(
      listener: (context, state) {
        state.mapOrNull(
          startedPayment: (value) => context.push(AppRouter.paymentWebViewRoute,
              extra: value.paymentDetails['payment_url']),
          completedPayment: (value) async {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Payment Successful")));
          },
        );
      },
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: const Text("Get Your Ticket"),
        ),
        body: SizedBox(
          width: 100.w,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 7.w,
                vertical: 0.4.h,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.ticketRate.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 5.w),
                      Text(
                          '€ ${widget.ticketRate.currentPrice?.price.toStringAsFixed(2)}')
                    ],
                  ),
                  SizedBox(height: 2.h),
                  CustomTextFormField(
                    controller: _nameController,
                    textInputType: TextInputType.name,
                    contentPadding: EdgeInsets.all(3.2.w).copyWith(left: 9.w),
                    hintText: "Name",
                    // hintStyle: CustomTextStyles.bodyMediumGray300,
                    // onChanged: (value) => context
                    //     .read<AuthFormBloc>()
                    //     .add(AuthFormEvent.nameChanged(value)),
                    borderDecoration:
                        TextFormFieldStyleHelper.fillOnPrimaryContainerTL20,
                    filled: true,
                  ),
                  SizedBox(height: 1.h),
                  CustomTextFormField(
                    controller: _emailController,
                    textInputType: TextInputType.emailAddress,
                    contentPadding: EdgeInsets.all(3.2.w).copyWith(left: 9.w),
                    hintText: "Email",
                    // hintStyle: CustomTextStyles.bodyMediumGray300,
                    // onChanged: (value) => context
                    //     .read<AuthFormBloc>()
                    //     .add(AuthFormEvent.emailChanged(value)),
                    borderDecoration:
                        TextFormFieldStyleHelper.fillOnPrimaryContainerTL20,
                    filled: true,
                  ),
                  SizedBox(height: 1.h),
                  CustomTextFormField(
                    controller: _phoneController,
                    textInputType: TextInputType.phone,
                    contentPadding: EdgeInsets.all(3.2.w).copyWith(left: 9.w),
                    hintText: "Phone",
                    // hintStyle: CustomTextStyles.bodyMediumGray300,
                    // onChanged: (value) => context
                    //     .read<AuthFormBloc>()
                    //     .add(AuthFormEvent.phoneChanged(value)),
                    borderDecoration:
                        TextFormFieldStyleHelper.fillOnPrimaryContainerTL20,
                    filled: true,
                  ),
                  SizedBox(height: 1.h),
                  CustomTextFormField(
                    controller: _addressController,
                    textInputType: TextInputType.streetAddress,
                    contentPadding: EdgeInsets.all(3.2.w).copyWith(left: 9.w),
                    hintText: "Address",
                    // hintStyle: CustomTextStyles.bodyMediumGray300,
                    // onChanged: (value) => context
                    //     .read<AuthFormBloc>()
                    //     .add(AuthFormEvent.addressChanged(value)),
                    borderDecoration:
                        TextFormFieldStyleHelper.fillOnPrimaryContainerTL20,
                    filled: true,
                  ),
                  SizedBox(height: 1.h),
                  SizedBox(
                    width: 50.w,
                    child: CustomElevatedButton(
                      text: "Checkout",
                      buttonTextStyle: theme.textTheme.titleSmall!
                          .copyWith(color: appTheme.black900),
                      onPressed: () {
                        context
                            .read<PaymentBloc>()
                            .add(PaymentEvent.startPayment(
                              ticketRateId: widget.ticketRate.id.getOrCrash(),
                              priceId: widget.ticketRate.currentPrice!.id
                                  .getOrCrash(),
                              fullName: _nameController.text,
                              phone: _phoneController.text,
                              email: _emailController.text,
                              address: _addressController.text,
                            ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
