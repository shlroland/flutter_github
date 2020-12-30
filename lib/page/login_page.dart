import 'package:flutter/material.dart';
import 'package:flutter_github/common/config/config.dart';
import 'package:flutter_github/common/local/local_storage.dart';
import 'package:flutter_github/common/style/style.dart';
import 'package:flutter_github/widget/pro_flex_button.dart';
import 'package:flutter_github/widget/pro_input_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  static final String sName = "login";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginBloC {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: Scaffold(
        body: Container(
          color: Theme.of(context).primaryColor,
          child: Stack(
            children: <Widget>[
              Center(
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      color: ProColors.cardWhite,
                      margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 30.0, top: 40.0, right: 30.0, bottom: 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image(
                              image: AssetImage(ProIcons.DEFAULT_USER_ICON),
                              width: 90.0,
                              height: 90.0,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            ProInputWidget(
                              hintText: '用户姓名',
                              iconData: ProIcons.LOGIN_USER,
                              onChanged: (String value) {
                                _userName = value;
                              },
                              controller: userController,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),
                            ProInputWidget(
                              hintText: '请输入密码',
                              iconData: ProIcons.LOGIN_PW,
                              obscureText: true,
                              onChanged: (String value) {
                                _password = value;
                              },
                              controller: pwController,
                            ),
                            Padding(padding: new EdgeInsets.all(10.0)),
                            Container(
                              height: 50,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      child: ProFlexBUtton(
                                    text: '账号登录',
                                    color: Theme.of(context).primaryColor,
                                    textColor: ProColors.textWhite,
                                    fontSize: 16,
                                    onPress: null,
                                  )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: ProFlexBUtton(
                                    text: '授权登录',
                                    color: Theme.of(context).primaryColor,
                                    textColor: ProColors.textWhite,
                                    fontSize: 16,
                                    onPress: null,
                                  ))
                                ],
                              ),
                            ),
                            Padding(padding: new EdgeInsets.all(15.0)),
                            InkWell(
                              onTap: null,
                              child: Text(
                                '切换语言',
                                style: TextStyle(color: ProColors.subTextColor),
                              ),
                            ),
                            Padding(padding: new EdgeInsets.all(15.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

mixin LoginBloC on State<LoginPage> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

  var _userName = "";
  var _password = "";

  @override
  void initState() {
    super.initState();
    initParams();
  }

  @override
  void dispose() {
    super.dispose();
    // userController.removeListener(_usernameChange);
    // pwController.removeListener(_passwordChange);
  }

  initParams() async {
    _userName = await LocalStorage.get(Config.USER_NAME_KEY);
    _password = await LocalStorage.get(Config.PW_KEY);

    userController.value = TextEditingValue(text: _userName ?? "");
    pwController.value = new TextEditingValue(text: _password ?? "");
  }
}
