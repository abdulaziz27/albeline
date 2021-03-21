part of '../../uis.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String username, email, password, c_password;
  final _formKey = GlobalKey<FormState>();

  bool remember = false;
  bool isLoading = false;
  final List<String> errors = [];
  var reg = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _cPasswordController = TextEditingController();

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

  // signup(username, email, password, c_password) async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   print("Calling");

  //   Map data = {
  //     'email': email,
  //     'password': password,
  //     'c_password': c_password,
  //     'username': username
  //   };
  //   print(data.toString());
  //   final response =
  //       await http.post("https://albeline-backend.herokuapp.com/api/register",
  //           headers: {
  //             "Accept": "application/json",
  //             "Content-Type": "application/x-www-form-urlencoded"
  //           },
  //           body: data,
  //           encoding: Encoding.getByName("utf-8"));

  //   if (response.statusCode == 200) {
  //     setState(() {
  //       isLoading = false;
  //     });
  //     // final snackBar = SnackBar(
  //     //   duration: Duration(milliseconds: 2000),
  //     //   content: Text("You have registered please login!"),
  //     //   );
  //     // Scaffold.of(context).showSnackBar(snackBar);
  //     Navigator.pop(context);
  //     print("Success");
  //     // Map<String, dynamic> resposne = jsonDecode(response.body);
  //     // if (!resposne['error']) {
  //     //   Map<String, dynamic> user = resposne['data'];
  //     //   print(" User name ${user['data']}");
  //     //   savePref(
  //     //       1, user['username'], user['email'], user['password'], user['cPassword']);
  //     //   Navigator.pop(context);
  //     //   return true;
  //     // } else {
  //     //   print(" ${resposne['message']}");
  //     // }
  //     // _scaffoldKey.currentState
  //     //     .showSnackBar(SnackBar(content: Text("${resposne['message']}")));
  //   } else {
  //     // _scaffoldKey.currentState
  //     //     .showSnackBar(SnackBar(content: Text("please try again!")));
  //     // final snackBar = SnackBar(
  //     //   duration: Duration(milliseconds: 2000),
  //     //   content: Text("Please try again!"),
  //     //   );
  //     //   Scaffold.of(context).showSnackBar(snackBar);
  //     print("Failed");
  //   }
  // }

  // savePref(
  //   int value,
  //   String username,
  //   String email,
  //   String password,
  //   String c_password,
  // ) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();

  //   preferences.setInt("value", value);
  //   preferences.setString("username", username);
  //   preferences.setString("email", email);
  //   preferences.setString("password", password);
  //   preferences.setString("c_password", c_password);
  //   preferences.commit();
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildUsernameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConfirmPassFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () async {
              // signup(_usernameController.text, _emailController.text,
              //     _passwordController.text, _cPasswordController.text);
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                regiter();
                // try {
                //   FirebaseUser user = (await FirebaseAuth.instance
                //           .createUserWithEmailAndPassword(
                //     email: _emailController.text,
                //     password: _passwordController.text,
                //   ))
                //       .user;
                //   if (user != null) {
                //     // UserUpdateInfo updateUser = UserUpdateInfo();
                //     // updateUser.displayName = _usernameController.text;
                //     // user.updateProfile(updateUser);
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
                //   _usernameController.text = "";
                //   _emailController.text = "";
                //   _passwordController.text = "";
                //   _cPasswordController.text = "";

                //   setState(() {
                //     Flushbar(
                //       title: "Error!",
                //       message: "No one has signed in",
                //       duration: Duration(seconds: 1),
                //       backgroundColor: Colors.red,
                //     )..show(context);
                //   });
                // }
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConfirmPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => c_password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == c_password) {
          removeError(error: kMatchPassError);
        }
        c_password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      controller: _cPasswordController,
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
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
      controller: _passwordController,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
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
      controller: _emailController,
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

  TextFormField buildUsernameFormField() {
    return TextFormField(
      onSaved: (newValue) => username = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kUsernameNullError);
        } else if (value.length >= 2) {
          removeError(error: kShortUsernameError);
        }
        username = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kUsernameNullError);
          return "";
        } else if (value.length < 2) {
          addError(error: kShortUsernameError);
          return "";
        }
        return null;
      },
      controller: _usernameController,
      decoration: InputDecoration(
        labelText: "Username",
        hintText: "Enter your username",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  void regiter() {
    registerUser(_usernameController.text, _emailController.text,
            _passwordController.text, _cPasswordController.text)
        .then((value) {
      setState(() {
        isLoading = true;
      });
      setState(() {
        if (value == true) {
          // Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //         builder: (contex) => LoginSuccessScreen()));
          Flushbar(
            title: "Alhamdulillah",
            message: "Verify Email Has Been Sent! Please Verify it!",
            backgroundColor: Colors.green,
            duration: Duration(seconds: 4),
          )..show(context).then((value) =>
              Navigator.of(context).pushNamed(LoginSuccessScreen.routeName));
        } else if (value == false) {
          Flushbar(
            title: "Opps",
            message: "Your Username or Email Already Taken",
            backgroundColor: Colors.red,
            duration: Duration(seconds: 4),
          )..show(context);
        } else {
          Flushbar(
            title: "Error!",
            message: "Invalid Data, Please re-Check",
            duration: Duration(seconds: 4),
            backgroundColor: Colors.red,
          )..show(context);
        }
      });
    });
  }
}
