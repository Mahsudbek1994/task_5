import 'package:flutter/material.dart';
import '../home_page/home_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  static const String id = "/sign_in_page";
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: const Icon(Icons.arrow_back, color: Colors.black,),
          splashRadius: 20,
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text("Kirish", style: TextStyle(fontSize: 25),),

            const SizedBox(
              height: 32,
            ),

            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 1.5
                    ),
                  )
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            TextField(
              controller: passwordController,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 1.5
                    ),
                  )
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            MaterialButton(
              height: 52,
              minWidth: MediaQuery.of(context).size.width -32,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(emailController.text.trim().toString())));
              },
              child: const  Text("KIRISH", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              color: Colors.black,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            MaterialButton(
              height: 52,
              minWidth: MediaQuery.of(context).size.width - 32,
              onPressed: (){},
              child: Text("Google bilan kirish".toUpperCase(), style: const TextStyle(color: Colors.blue),),
              color: Colors.white,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                    style: BorderStyle.solid,
                    width: 1.5
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
