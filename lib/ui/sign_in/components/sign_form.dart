part of '../../uis.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Map<String, String> _authData = {'email': '', 'password': ''};
  bool _isLoading = false;
  bool _obSecure = true;
  bool remember = false;
  final List<String> errors = [];

  loginStatus() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("token") == null) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen()),
        (Route<dynamic> route) => false,
      );
    }
  }

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  // void login() {
  //   loginUser(email.text, password.text).then((value) {
  //     setState(() {
  //       _isLoading = true;
  //     });
  //     setState(() {
  //       if (value == true) {
  //         Navigator.pushReplacement(context,
  //             MaterialPageRoute(builder: (contex) => LoginSuccessScreen()));
  //       } else {
  //         Flushbar(
  //           title: "Error!",
  //           message: "No one has signed in",
  //           duration: Duration(seconds: 1),
  //           backgroundColor: Colors.red,
  //         )..show(context);
  //       }
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              // Checkbox(
              //   value: remember,
              //   activeColor: kPrimaryColor,
              //   onChanged: (value) {
              //     setState(() {
              //       remember = value;
              //     });
              //   },
              // ),
              // Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot/Reset Password?",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Sign In",
            press: () async {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                // login();
                loginUser(email.text, password.text).then((value) {
                  setState(() {
                    _isLoading = true;
                  });
                  setState(() {
                    if (value == true) {
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (contex) => LoginSuccessScreen()));
                      Flushbar(
                        title: "Logged In",
                        message: "Happy shopping :)",
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 3),
                      )..show(context).then((value) => Navigator.of(context)
                          .pushNamed(LoginSuccessScreen.routeName));
                    } else if (value == false) {
                      Flushbar(
                        title: "Logged In",
                        message: "But You Haven't Verified Your Email",
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 4),
                      )..show(context).then((value) => Navigator.of(context)
                          .pushNamed(LoginSuccessScreen.routeName));
                    } else {
                      Flushbar(
                        title: "Invalid Data!",
                        message: "Please Check Your Email or Password",
                        duration: Duration(seconds: 3),
                        backgroundColor: Colors.red,
                      )..show(context);
                    }
                  });
                  setState(() {
                    _isLoading = true;
                  });
                });
                // await AuthServices.signInAnonymous();
                // try {
                //   FirebaseUser user =
                //       (await FirebaseAuth.instance.signInWithEmailAndPassword(
                //     email: email.text,
                //     password: password.text,
                //   ))
                //           .user;
                //   if (user != null) {
                //     // SharedPreferences prefs =
                //     //     await SharedPreferences.getInstance();
                //     // prefs.setString('displayName', user.displayName);
                //     Flushbar(
                //       title: "Alhamdulillah",
                //       message: "Happy shopping :)",
                //       backgroundColor: Colors.green,
                //       duration: Duration(seconds: 1),
                //     )..show(context).then((value) => Navigator.of(context)
                //         .pushNamed(LoginSuccessScreen.routeName));
                //   }
                // } catch (e) {
                //   print(e);
                //   email.text = "";
                //   password.text = "";
                //   setState(() {
                //     Flushbar(
                //       title: "Error!",
                //       message: "No one has signed in",
                //       duration: Duration(seconds: 1),
                //       backgroundColor: Colors.red,
                //     )..show(context);
                //   });
                // }
                // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
          // SizedBox(height: getProportionateScreenHeight(20)),
          // DefaultButton(
          //   text: "Sign In As Guest",
          //   press: () async {
          //     await AuthServices.signInAnonymous().then(
          //       (value) => setState(() {
          //         Flushbar(
          //           title: "Error!",
          //           message: "No one has signed in",
          //           duration: Duration(seconds: 1),
          //           backgroundColor: Colors.red,
          //         )..show(context).then((value) => Navigator.pushAndRemoveUntil(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => LoginSuccessScreen()),
          //               (Route<dynamic> route) => false,
          //             ));
          //       }),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: _obSecure,
      onSaved: (value) {
        _authData['password'] = value;
      },
      controller: password,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
          suffixIcon: IconButton(
              icon: Icon(_obSecure ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  _obSecure = !_obSecure;
                });
              })),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        _authData['email'] = value;
      },
      controller: email,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
