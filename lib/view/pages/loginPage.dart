import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ssosa_app/common.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  Widget _buildIDTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '아이디',
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              hintText: '아이디를 입력하세요.',
              hintStyle: kHintTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '비밀번호',
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: '비밀번호를 입력하세요.',
              hintStyle: kHintTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('비밀번호 찾기 버튼 입니다.'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          '비밀번호 찾기',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => print('로그인 버튼 입니다'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          '로그인',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: [
          Theme(
            //data: ThemeData(unselectedWidgetColor: Colors.white),
            data: ThemeData(unselectedWidgetColor: Colors.grey),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(
                  () {
                    _rememberMe = value;
                  },
                );
              },
            ),
          ),
          Text(
            '아이디를 저장 하시겠습니까?',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _bulidSignInWithText() {
    return Column(
      children: [
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Sign in with',
          style: kLabelStyle,
        )
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildSocialBtn(
            () => print('sms로그인'),
            AssetImage('./assets/naver.png'),
          ),
          _buildSocialBtn(
            () => print('sms로그인'),
            AssetImage('./assets/pngegg.png'),
          ),
          _buildSocialBtn(
            () => print('sms로그인'),
            AssetImage('./assets/google.jpeg'),
          ),
        ],
      ),
    );
  }

  Widget _buildDignupBtn(){
    return GestureDetector(
      onTap: ()=>print('회원가입'),
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(
                text: '계정이 없습니까?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                  text: '회원가입',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  )
              )
            ]
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                //   colors: [
                //     Color(0xFF73AEF5),
                //     Color(0xFF61A4F1),
                //     Color(0xFF478DE0),
                //     Color(0xFF398AE5),
                //   ],
                //   //stops: [0.1, 0.4, 0.7, 0.9],
                // ),
                color: Colors.white
              ),
            ),
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "./assets/logo.png",
                      height: 100,
                      width: 200,
                    ),
                    /*Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),*/
                    SizedBox(
                      height: 15.0,
                    ),
                    _buildIDTF(),
                    SizedBox(
                      height: 15.0,
                    ),
                    _buildPasswordTF(),
                    _buildPasswordBtn(),
                    _buildRememberMeCheckbox(),
                    _buildLoginBtn(),
                    //_bulidSignInWithText(),
                    _buildSocialBtnRow(),
                    _buildDignupBtn(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
