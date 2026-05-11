  import 'package:background_locator_2/keys.dart';

  import 'locator_settings.dart';

  enum IOSActivityType {
    other,
    automotive,
    fitness,
    navigation,
    airborne,
  }

  class IOSSettings extends LocatorSettings {
    /// [accuracy] The accuracy of location, default is NAVIGATION.
    ///
    /// [distanceFilter] Distance in meters to trigger location update.
    ///
    /// [showsBackgroundLocationIndicator] The background location usage indicator
    /// is a blue bar or a blue pill in the status bar on iOS. Default is false.
    ///
    /// [stopWithTerminate] Stops location updates when the app is terminated.
    ///
    /// [activityType] The Core Location activity type used by iOS to tune
    /// background location behavior. Default is navigation.

    final bool showsBackgroundLocationIndicator;
    final bool stopWithTerminate;
    final IOSActivityType activityType;

    const IOSSettings({
      LocationAccuracy accuracy = LocationAccuracy.NAVIGATION,
      double distanceFilter = 0,
      this.showsBackgroundLocationIndicator = false,
      this.stopWithTerminate = false,
      this.activityType = IOSActivityType.navigation,
    }) : super(accuracy: accuracy, distanceFilter: distanceFilter);

    Map<String, dynamic> toMap() {
      return {
        Keys.SETTINGS_ACCURACY: accuracy.value,
        Keys.SETTINGS_DISTANCE_FILTER: distanceFilter,
        Keys.SETTINGS_IOS_SHOWS_BACKGROUND_LOCATION_INDICATOR:
            showsBackgroundLocationIndicator,
        Keys.SETTINGS_IOS_STOP_WITH_TERMINATE: stopWithTerminate,
        Keys.SETTINGS_IOS_ACTIVITY_TYPE: activityType.name,
      };
    }
  }
