import 'package:flutter/material.dart';
import 'package:thesistest2/components/custom_surfix_icon.dart';
import 'package:thesistest2/components/default_button.dart';
import 'package:thesistest2/components/form_error.dart';
import 'package:thesistest2/screens/complete_profile/complete_profile_screen.dart';
import 'package:dropdownfield/dropdownfield.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName;
  String middleName;
  String lastName;
  String gender;
  String birthDate;
  String password;
  String conform_password;
  bool remember = false;
  final List<String> errors = [];

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
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildMiddleNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildGenderFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildBirthDateFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

 

//FIRSTNAME NGA FIELD(TEXTBOX)
  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kFirstNamelNullError);
        } 
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kFirstNamelNullError);
          return "";
      
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter First Name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  //MIDDLENAME NGA FIELD(TEXTBOX)
TextFormField buildMiddleNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kMiddleNamelNullError);
        } 
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kMiddleNamelNullError);
          return "";
      
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Middle Name",
        hintText: "Enter Middle Name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
//LASTNAME NGA FIELD(TEXTBOX)
TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kLastNamelNullError);
        } 
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kLastNamelNullError);
          return "";
      
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter Last Name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildGenderFormField() {return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => gender = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kGenderlNullError);
        } 
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kGenderlNullError);
          return "";
      
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Gender",
        hintText: "Enter Gender",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
    }

    TextFormField buildBirthDateFormField() {
      return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => gender = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kGenderlNullError);
        } 
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kGenderlNullError);
          return "";
      
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Birthdate",
        hintText: "Enter Birthdate",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
    }

}