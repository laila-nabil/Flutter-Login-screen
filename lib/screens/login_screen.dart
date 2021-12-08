import 'package:flutter/material.dart';
import 'package:login_screen/widgets/background.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    print('height ${screenSize.height}');
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImageWithGradient(),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: (screenSize.height / 13.0).ceilToDouble(), left: 30.0),
                child: LanguageButton(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Image.asset(
                  'assets/images/logo_en.png',
                  width: screenSize.width * 0.8,
                )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: 'Enter Phone Number',
                          labelStyle:
                              TextStyle(color: Colors.white70, fontSize: 25)),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Enter Password',
                          labelStyle:
                              TextStyle(color: Colors.white70, fontSize: 25)),
                    ),
                  ],
                ),
              ),
              Center(
                child: LoginButton(),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 15, left: 30.0, right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SignupButton(),
                    ForgotPasswordButton(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.language,
        size: 30,
      ),
      label: Text(
        'EN',
        style: TextStyle(fontSize: 22),
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 12)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20))),
          backgroundColor:
              MaterialStateProperty.all(Colors.blueAccent)),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Login',
        style: TextStyle(fontSize: 20),
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 30, vertical: 12)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8))),
          backgroundColor:
              MaterialStateProperty.all(Colors.blueAccent)),
    );
  }
}

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Forgot password',
        style: TextStyle(fontSize: 18, color: Colors.white70),
      ),
    );
  }
}

class SignupButton extends StatelessWidget {
  const SignupButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Sign up',
        style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).primaryColor),
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                  horizontal: 30, vertical: 12)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          backgroundColor:
              MaterialStateProperty.all(Colors.white)),
    );
  }
}
