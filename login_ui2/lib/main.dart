import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Home(),
  ));
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController passwordController = TextEditingController();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding:false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg2.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.brown[700],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontFamily: 'Jomhuria'
                ),
              ),

              SizedBox(height: 10,),

              CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpg'),
                radius: 40,
              ),

              SizedBox(height: 10,),

               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                 child: Card(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15.0),
                   ),
                   child: Column(
                     children: <Widget>[

                       Padding(
                         padding: EdgeInsets.symmetric(horizontal:20, vertical: 10),
                         child: TextField(
                           style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             letterSpacing: 1.5,
                             fontSize: 22,
                             fontFamily: 'Jomhuria',
                           ),
                           decoration: InputDecoration(
                             icon: Icon(
                               Icons.person_outline_outlined,
                               color: Colors.brown[700],
                             ),
                             hintText: 'Enter Username',
                           ),
                         ),
                       ),

                       SizedBox(height: 10,),

                       Padding(
                         padding: EdgeInsets.symmetric(horizontal:20, vertical: 0),
                         child: TextField(
                           controller: passwordController,
                           obscureText: true,
                           style: TextStyle(
                             letterSpacing: 1.5,
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 22,
                             fontFamily: 'Jomhuria',
                           ),
                           decoration: InputDecoration(
                             icon: Icon(
                               Icons.vpn_key_outlined,
                               color: Colors.brown[700],
                             ),
                             hintText: 'Enter Password',
                           ),
                         ),
                       ),

                       SizedBox(height: 5,),

                       Row(
                         children: <Widget>[
                           Align(
                             alignment: Alignment.centerLeft,
                             child: Container(
                               padding: EdgeInsets.symmetric(horizontal:20, vertical: 0),
                               child:  Switch(
                                 value: isSwitched,
                                 onChanged: (value){
                                   setState(() {
                                     isSwitched=value;
                                     print(isSwitched);
                                   });
                                 },
                                 activeTrackColor: Colors.teal[500],
                                 activeColor: Colors.teal[200],
                               ),
                             ),
                           ),

                           SizedBox(width: 120,),

                           Align(
                             alignment: Alignment.centerRight,
                             child: Container(
                               padding: EdgeInsets.symmetric(horizontal:20, vertical: 0),
                               child: Text(
                                 "Forgot Password?",
                                 style: TextStyle(
                                     color: Colors.teal[500],
                                     fontWeight: FontWeight.bold,
                                     fontSize: 18,
                                     letterSpacing: 1,
                                     fontFamily: 'Jomhuria'
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),

                       SizedBox(height: 10,),

                       RaisedButton(
                         padding: EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                         color: Colors.brown[700],
                         onPressed: (){},
                         child: Text(
                           "LOGIN",
                           style: TextStyle(
                               color: Colors.teal[500],
                               fontWeight: FontWeight.bold,
                               letterSpacing: 2,
                               fontFamily: 'Jomhuria',
                               fontSize: 18
                           ),
                         ),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(50)),
                       ),

                        SizedBox(height: 10,),

                     ],
                   ),
                 ),
               ),

            ],
          ),
        ),
      ),
    );
  }
}
