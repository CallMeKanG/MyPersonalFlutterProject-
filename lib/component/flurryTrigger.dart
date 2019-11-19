import 'package:flurry_analytics/flurry_analytics.dart';
import './events.dart';

class Flurry {
  static void initialize() async {
    await FlurryAnalytics.initialize(
        androidKey: "xxx", iosKey: "xxx", enableLog: true);
  }

  void logEvent(FlurryEvent event) {
    FlurryAnalytics.logEvent(event.eventName,parameters:event.parameters);
  }
}

