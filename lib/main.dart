import 'package:flutter/material.dart';
import 'package:flutter_kakao/kakao.login.dart';
import 'package:kakao_flutter_sdk/all.dart';

void main() {
  KakaoContext.clientId = "kakao developer native app key";
  KakaoContext.javascriptClientId = "kakao developer javascript key";
  runApp(MyApp());

  // retrive hash key with command below
  /*
  keytool -exportcert -alias androiddebugkey -keystore
  ~/.android/debug.keystore -storepass android -keypass
  android | openssl sha1 -binary | openssl base64
  */
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KakaoLogin(),
    );
  }
}