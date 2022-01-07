import 'package:doktor/constant.dart';
import 'package:doktor/screens/doctor_login_screen.dart';
import 'package:doktor/screens/hasta_login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("VERA HASTANESİ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    width: size.width * 0.7,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoctorLoginScreen(),
                          ),
                        );
                      },
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.white,
                      child: Text("Doktor Girişi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                    height: size.height * 0.02,
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    width: size.width * 0.7,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HastaLoginScreen(),
                          ),
                        );
                      },
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.white,
                      child: Text("Hasta Girişi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                    height: size.height * 0.02,
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
