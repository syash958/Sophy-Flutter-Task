import 'package:flutter/material.dart';
import 'package:sophytask/screens/taskHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        backgroundColor: Colors.white,
        hintColor: Colors.orange,
appBarTheme: AppBarTheme(

)
      ),
      home: MyHomePage(title: 'Flutter Task Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _passwordField = TextEditingController();
  TextEditingController _emailField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("Sign In",style: TextStyle(color: Colors.orange),),
        ),
        body: Container(
          width: double.infinity,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/Polygon 4.png'),
              alignment: Alignment.topRight
            ),
          ),
          child: Form(
            // key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                //email field
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    controller: _emailField,
                    keyboardType: TextInputType.emailAddress,
                    // validator:
                    // MultiValidator([
                    //   RequiredValidator(errorText: "* Required"),
                    //   EmailValidator(errorText: "Enter valid email id"),
                    // ])                ,
                    decoration: InputDecoration(
                        hintText: "eg. abc@gmail.com",
                        fillColor: Colors.orange,
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0))),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 35),
                //password field
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    controller: _passwordField,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    // validator: MultiValidator([
                    //   RequiredValidator(errorText: "* Required"),
                    //   MinLengthValidator(6,errorText: "Password should be atleast 6 characters"),
                    //   MaxLengthValidator(15,errorText: "Password should not be greater than 15 characters")
                    // ])
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height / 35),
                //Login Button
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                //  color: Colors.orange,
                  child: MaterialButton(
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TaskHome()));
                    },
                  ),
                ),
                //forget password
                Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: TextButton(
                      child: Text(
                        "Forget Password ?  ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      onPressed: () {},
                    )),

                SizedBox(height: MediaQuery.of(context).size.height / 35),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account ? "),
                    Container(
                      child: Text("Create Account",style: TextStyle(color: Colors.orange),),
                    )
                  ],
                )
              ],
            ),
          ),

        )
    );
  }
}
