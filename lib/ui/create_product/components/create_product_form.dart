part of '../../uis.dart';

class CreateProductForm extends StatefulWidget {
  @override
  _CreateProductFormState createState() => _CreateProductFormState();
}

class _CreateProductFormState extends State<CreateProductForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String name;
  String description;
  String price;
  String stock;
  String condition;
  String heavy;
  String categories;

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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildDescriptionFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPriceFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildStockFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(25)),
          buildConditionFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildHeavyFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildCategoriesFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Create Product",
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildCategoriesFormField() {
    return TextFormField(
      onSaved: (newValue) => categories = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kCategoriesNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kCategoriesNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Categories",
        hintText: "Enter your categories",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: "assets/icons/Cash.svg"),
      ),
    );
  }

  TextFormField buildHeavyFormField() {
    return TextFormField(
      onSaved: (newValue) => heavy = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kHeavyNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kHeavyNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Heavy",
        hintText: "Enter your heavy",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: "assets/icons/Bill Icon.svg"),
      ),
    );
  }

  TextFormField buildConditionFormField() {
    return TextFormField(
      onSaved: (newValue) => condition = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kConditionNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kConditionNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Condition",
        hintText: "Enter your condition",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: "assets/icons/Conversation.svg"),
      ),
    );
  }

  TextFormField buildStockFormField() {
    return TextFormField(
      onSaved: (newValue) => stock = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kStockNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kStockNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Stock",
        hintText: "Enter your stock",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: "assets/icons/Parcel.svg"),
      ),
    );
  }

  TextFormField buildPriceFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => price = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPriceNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPriceNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Price",
        hintText: "Enter your price",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/receipt.svg"),
      ),
    );
  }

  TextFormField buildDescriptionFormField() {
    return TextFormField(
      onSaved: (newValue) => description = newValue,
      decoration: InputDecoration(
        labelText: "Description",
        hintText: "Enter your description",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Chat bubble Icon.svg"),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Enter your product name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Shop Icon.svg"),
      ),
    );
  }
}
