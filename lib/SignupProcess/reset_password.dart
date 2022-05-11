import 'package:cryptowatch/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 78),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    size: 16,
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 83),
              TextFormField(
                keyboardType: TextInputType.name,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'New Password',
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  
                ),
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 24,),
              TextFormField(
                keyboardType: TextInputType.name,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: ' Confirm Password',
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  
                ),
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 48,),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: PrimaryBlue,
                onPressed: () {

                },
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 22,
                ),
                child: Text(
                  'Done',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
