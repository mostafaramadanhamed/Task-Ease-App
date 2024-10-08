import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;


class NotificationHelper {
  static final FlutterLocalNotificationsPlugin _plugin = FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    var initializationSettingsAndroid = const AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettings = InitializationSettings(android: initializationSettingsAndroid,);
    await _plugin.initialize(initializationSettings);
  }

  static Future<void> showNotification(String title, String body,DateTime scheduledTime) async {
    var notificationDetails = const NotificationDetails(
        android: AndroidNotificationDetails(
            'channel_id', 'channel_name',
            importance: Importance.max, priority: Priority.high),
      );
// Assuming you have a desired DateTime object (e.g., scheduledTime)
    // Optional: Use user's location
    var scheduledDateTime = tz.TZDateTime.from(scheduledTime,tz.local); // Use local time zone if no user location

    await _plugin.zonedSchedule(0, title, body,scheduledDateTime ,notificationDetails, uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.wallClockTime, androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle);
  }
}
