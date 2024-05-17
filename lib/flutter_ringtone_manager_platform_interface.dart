import 'dart:async';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ringtone_manager_method_channel.dart';

abstract class FlutterRingtoneManagerPlatform extends PlatformInterface {
  /// Constructs a FlutterRingtoneManagerPlatform.
  FlutterRingtoneManagerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterRingtoneManagerPlatform _instance =
      MethodChannelFlutterRingtoneManager();

  /// The default instance of [FlutterRingtoneManagerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterRingtoneManager].
  static FlutterRingtoneManagerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterRingtoneManagerPlatform] when
  /// they register themselves.
  static set instance(FlutterRingtoneManagerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  FutureOr<void> playRingtone() {
    throw UnimplementedError('playRingtone() has not been implemented');
  }

  FutureOr<void> playAlarm() {
    throw UnimplementedError('playAlarm() has not been implemented');
  }

  FutureOr<void> playNotification() {
    throw UnimplementedError('playNotification() has not been implemented');
  }

  FutureOr<void> playAudioAsset(String assetPath) {
    throw UnimplementedError('playAudioAsset() has not been implemented');
  }
}
