import 'package:flutter/material.dart';
import '../home_page/home_page.dart';

class UsernamePage extends StatefulWidget {
  const UsernamePage({Key? key}) : super(key: key);

  static const String id = "/username_page";
  @override
  State<UsernamePage> createState() => _UsernamePageState();
}

class _UsernamePageState extends State<UsernamePage> {
  TextEditingController usernameController = TextEditingController();
  final String privacy = "Ro’yxat o’tish tugmasini bosish orqali siz photogram ijtimoiy tarog’ining Foydalanish shartlari va Xavfsizlik qoidalariga rozilik bildirgan bo’lasiz.";
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
            const Text("Ro'yxatdan o'tish", style: TextStyle(fontSize: 25),),

            const SizedBox(
              height: 32,
            ),

            TextField(
              controller: usernameController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: 'Username',
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

            // button
            MaterialButton(
              height: 52,
              minWidth: MediaQuery.of(context).size.width - 32,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(usernameController.text.trim().toString())));
              },
              child: Text("Ro'yxatdan o'tish".toUpperCase(), style: const TextStyle(color: Colors.white),),
              color: Colors.black,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),

            const SizedBox(
              height: 32,
            ),

            // privacy policy
            RichText(
              text: const TextSpan(
                  text: "Ro’yxat o’tish tugmasini bosish orqali siz ",
                  style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 13),
                  children: [
                    TextSpan(
                        text: "photogram ",
                        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 13)
                    ),
                    TextSpan(
                        text: "ijtimoiy taromg’ning Foydalanish shartlari va Xavfsizlik qoidalariga rozilik bildirgan bo’lasiz.",
                        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 13)
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// TODO Implement this library.