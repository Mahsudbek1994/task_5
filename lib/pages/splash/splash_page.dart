import 'package:flutter/material.dart';
import '../signin/signin_page.dart';
import '../signup/signup_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const String id = "/splash_page";
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text("photogram", style: TextStyle(fontSize: 30),)
              ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 165,
                  child: Column(
                    children: [

                      // info
                      const  SizedBox(
                        height: 50,
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromRGBO(4, 12, 35, 1),
                            child: Text("Quantic", style: TextStyle(fontSize: 12),),
                          ),
                          title: Text("Quantic Jamoasi", style: TextStyle(fontSize: 22),),
                          subtitle: Text("Photogram beta 1.0", style: TextStyle(fontSize: 14, color: Colors.black),),
                        ),
                      ),

                      const SizedBox(
                        height: 32,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // sign up
                          MaterialButton(
                            height: 50,
                            minWidth: MediaQuery.of(context).size.width / 2 - 25,
                            onPressed: (){
                              Navigator.pushNamed(context, SignInPage.id);
                            },
                            child: Text("Kirish".toUpperCase(),),
                            color: Colors.white,
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                width: 1.5,
                                color: Colors.black,
                              )
                            ),
                          ),

                          // register
                          MaterialButton(
                            height: 50,
                            minWidth: MediaQuery.of(context).size.width / 2 - 25,
                            onPressed: (){
                              Navigator.pushNamed(context, SignUpPage.id);
                            },
                            child: Text("Ro'yxatdan o'tish".toUpperCase(), style: const TextStyle(color: Colors.white),),
                            color: Colors.black,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
