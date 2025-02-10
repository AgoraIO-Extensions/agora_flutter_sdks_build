import 'dart:io';

class GlobalConfig {
  GlobalConfig() {
    // flutter build windows --dart-define TEST_APP_ID="$TEST_APP_ID" --dart-define TEST_TOKEN="$TEST_TOKEN" --dart-define TEST_CHANNEL_ID="$TEST_CHANNEL_ID"
    final envVarMap = Platform.environment;

    // _testAppId = envVarMap['TEST_APP_ID']!;
    // _testToken = envVarMap['TEST_TOKEN'] ?? '';
    // _testChannelId = envVarMap['TEST_CHANNEL_ID'] ?? 'testapi';
    // // stdout.writeln('user: $user');
  }

  String get githubActionRunnerTemp => Platform.environment['RUNNER_TEMP']!;

  String get testAppId => Platform.environment['TEST_APP_ID']!;

  String get testToken => Platform.environment['TEST_TOKEN'] ?? '';

  String get rtmAppId => Platform.environment['TEST_RTM_APP_ID'] ?? '';

  String get rtmToken => Platform.environment['TEST_RTM_TOKEN'] ?? '';

  String get testChannelId =>
      Platform.environment['TEST_CHANNEL_ID'] ?? 'testapi';

  String get musicCenterAppid => Platform.environment['MUSIC_CENTER_APPID']!;

  String get appleProvisionProfileName =>
      Platform.environment['DEFAULT_BUILD_PROVISION_PROFILE_NAME']!;

  String get appleTeamId => Platform.environment['DEFAULT_BUILD_PROVISION_PROFILE_TEAMID']!;

  String get appleCodeSignIdentity =>
      Platform.environment['DEFAULT_BUILD_PROVISION_PROFILE_IDENTITY']!;

  String get agoraArtifactoryUser =>
      Platform.environment['AGORA_ARTIFACTORY_USER'] ?? '';

  String get agoraArtifactoryPwd =>
      Platform.environment['AGORA_ARTIFACTORY_PWD'] ?? '';
}
