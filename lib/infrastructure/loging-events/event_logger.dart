import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

class AnalyticsService {
  static final AnalyticsService _instance = AnalyticsService._internal();

  factory AnalyticsService() {
    return _instance;
  }

  AnalyticsService._internal();

  static final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;
  static final FirebaseAnalyticsObserver _observer =
      FirebaseAnalyticsObserver(analytics: _analytics);

  static FirebaseAnalyticsObserver get observer => _observer;

  Future<void> logEvent({
    required String name,
    Map<String, dynamic>? parameters,
  }) async {
    await _analytics.logEvent(
      name: name,
      parameters: parameters,
    );
  }

  Future<void> logLogin({String method = 'default'}) async {
    await _analytics.logLogin(loginMethod: method);
  }

  Future<void> logSignUp({String method = 'default'}) async {
    await _analytics.logSignUp(signUpMethod: method);
  }

  Future<void> logScreenView({
    required String screenName,
    String? screenClass,
  }) async {
    await _analytics.logScreenView(
        screenName: screenName, screenClass: screenClass);
  }

  Future<void> logPurchase({
    required double amount,
    required String currency,
  }) async {
    await _analytics.logEvent(
      name: 'purchase',
      parameters: {
        'value': amount,
        'currency': currency,
      },
    );
  }
}
