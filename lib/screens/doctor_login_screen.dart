import 'package:doktor/constant.dart';
import 'package:doktor/screens/doktor_screen.dart';
import 'package:flutter/material.dart';

class DoctorLoginScreen extends StatelessWidget {
  const DoctorLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Doktor Giriş",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: size.height * 0.02),
                    Container(
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      height: 60.0,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress, // bi bokluk var
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.only(top: 14.0),
                          prefixIcon: const Icon(
                            Icons.person_pin,
                            color: Colors.black,
                          ),
                          hintText: 'Id',
                        ),
                      ),
                    ),

                    SizedBox(height: size.height * 0.02),
                    Container(
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      height: 60.0,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.only(top: 14.0),
                          prefixIcon: const Icon(
                            Icons.vpn_key,
                            color: Colors.black,
                          ),
                          hintText: 'Şifre',
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 3, left: 3),
                  child:Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    width: size.width * 0.7,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoktorScreen(),
                          ),
                        );},
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.white,
                      child: Text("Giriş Yap",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
