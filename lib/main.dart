import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

var emailText = TextEditingController();
var passText = TextEditingController();


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Image.asset('assets/images/logo.png'),
                        Container(height:11,),
                    TextField(
                      controller: emailText,
                     decoration: InputDecoration(
                       hintText: 'Enter email here',
                       focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.purple,
                          width: 2,
                        )
                     ),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(15),
                         borderSide: BorderSide(
                           color: Colors.blue,
                               width: 2,
                         )
                       ),

                         suffixIcon: Icon(Icons.mail)
                     ),
                    ),
                    Container(height: 11,),
                    TextField(
                      controller: passText,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter password here',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.purple,
                              ),
                            ),

                          suffixIcon: IconButton(
                            icon: Icon(Icons.password),
                            onPressed: (){
                            },
                          ),
                        ),

                      ),
                    Container(height: 11,),
                    Container(
                      color: Colors.blue,
                      child: ElevatedButton(
                        child: Text('Login'),
                        onPressed: (){
                          String uEmail= emailText.text;
                          String uPass = passText.text;
                          print("Email:$uEmail,Pass:@upass");
                      },
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
