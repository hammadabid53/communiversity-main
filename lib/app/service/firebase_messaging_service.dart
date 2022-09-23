import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessagingService {
  static FirebaseMessagingService? _messagingService;

  static FirebaseMessaging? _firebaseMessaging;

  FirebaseMessagingService._createInstance();

  factory FirebaseMessagingService() {
    // factory with constructor, return some value
    if (_messagingService == null) {
      _messagingService = FirebaseMessagingService
          ._createInstance(); // This is executed only once, singleton object

      _firebaseMessaging = _getMessagingService();
    }
    return _messagingService!;
  }

  static FirebaseMessaging _getMessagingService() {
    return _firebaseMessaging ??= FirebaseMessaging.instance;
  }

  Future<String?> getToken() async {
    try {
      return await _firebaseMessaging!.getToken();
    } catch (error) {
      return null;
    }
  }

  initialize() async
  {
    NotificationSettings settings = await _firebaseMessaging!.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }
}
