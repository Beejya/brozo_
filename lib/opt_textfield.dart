import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class otp_textfeild extends StatefulWidget {
  const otp_textfeild({Key? key}) : super(key: key);

  @override
  State<otp_textfeild> createState() => _otp_textfeildState();
}

class _otp_textfeildState extends State<otp_textfeild> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.grey,
      title: Text("Enter your OTP", style:  TextStyle(color: Colors.black) ,),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Row(
              children: [
                Center(
                  child: OtpTextField(
                  numberOfFields: 5,
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true, 
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                      //handle validation or checks here           
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
                      showDialog(
                          context: context,
                          builder: (context){
                          return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text('Code entered is $verificationCode'),
                          );
                          }
                      );
                  }, // end onSubmit
    ),
                ),
              ],
            ),
          ),
        ),
      ),
   ); 
  }
}