The build scripts for Agora Flutter SDKs([agora_rtc_engine](https://github.com/AgoraIO-Extensions/Agora-Flutter-SDK), [agora_rtm](https://github.com/AgoraIO-Extensions/Agora-Flutter-RTM-SDK), etc).
## License

The project is under the MIT license.

## Secrets

```
ACTION_PAT: GitHub token，用于提PR
AGORALAB2020_KEYCHAIN_PASSWORD:
AGORALAB2020_P12_BASE64: base64 -i <AGORALAB2020_file_path>.p12 | pbcopy
AGORALAB2020_P12_PWD:
AGORALAB2020_PP_GPG_PWD:
AGORAQA2021_KEYCHAIN_PASSWORD:
AGORAQA2021_P12_BASE64:
AGORAQA2021_P12_PWD:
AGORAQA2021_PP_GPG_PWD:
AGORATEST2020_KEYCHAIN_PASSWORD:
AGORATEST2020_P12_BASE64:
AGORATEST2020_P12_PWD:
AGORATEST2020_PP_GPG_PWD:
CODE_SIGN_IDENTITY_LAB: Apple Development
CODE_SIGN_IDENTITY_QA: iPhone Developer
CODE_SIGN_IDENTITY_TEST: iPhone Developer
MUSIC_CENTER_APPID:
TEAM_LAB: JDPG69R49Z
TEAM_QA: PV44H27855
TEAM_TEST: 5459N9W32M
TEST_APP_ID:
TEST_RTM_APP_ID:
TEST_RTM_TOKEN: 同TEST_RTM_APP_ID
```

## 更新证书步骤：

- 从 https://confluence.agoralab.co/pages/viewpage.action?pageId=638990581 下载需要更新的证书.p12和.mobileprovision
base64 p12文件 在https://github.com/littleGnAl/hoe/settings/secrets/actions 更新对应证书的p12 base64值，如更新AGORAQA2021_P12_BASE64值。
```
base64 -i qa.p12 | pbcopy
```
- 更新mobileprovision文件 使用gpg加密mobileprovision文件 gpg passphare: GPG_PWD
```
gpg --symmetric --cipher-algo AES256 AgoraQA2021.mobileprovision
```
