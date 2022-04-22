import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  String email;
  HomePage(this.email);

  static const String id = "/home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String email = "No data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 64,
              backgroundColor: Colors.blueGrey.shade700,
              backgroundImage: const AssetImage("assets/images/my_pic.jpg"),
            ),

            const SizedBox(
              height: 16,
            ),

            Text("Shavkatov Mahsudbek", style: const TextStyle(fontSize: 20, ),),
            const SizedBox(
              height: 16,
            ),

            MaterialButton(
              height: 50,
              minWidth: MediaQuery.of(context).size.width - 32,
              onPressed: (){},
              child: Text("Xabar".toUpperCase(),),
              color: Colors.white,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
