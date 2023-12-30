import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Padding(
  padding: const EdgeInsets.all(10.0),
  child:   Column(

    mainAxisAlignment: MainAxisAlignment.spaceAround,



  children: [

     //Center(child: Image.asset('lib/assets/images')),

    Form(child: Column(

      children: [

        TextFormField(

          decoration:InputDecoration(

            hintText: "UserName",

            prefixIcon:Icon(Icons.ac_unit) ,



            border: OutlineInputBorder(

              borderRadius:BorderRadius.circular(5),

              borderSide: BorderSide(width:1),





            ),



          ),

        ),

        SizedBox(height: 10,),

        TextFormField(

          obscureText: true,

          decoration:InputDecoration(

            hintText: "PassWord",

            prefixIcon:Icon(Icons.remove_red_eye) ,



            border: OutlineInputBorder(

              borderRadius:BorderRadius.circular(5),

              borderSide: BorderSide(width:1),





            ),



          ),

        ),

        SizedBox(height: 10,),

        Container(

            child: Row(

              children: [

                Text("if you have no account ?"),

                InkWell(

                   onTap: (){

                       Navigator.of(context).pushNamed("SignUp");



                   },

                    child: Text("click here",style: TextStyle(color: Colors.blue),)),

              ],

            ),

          ),

        SizedBox(height: 10,),

        Container(

          child:ElevatedButton(

            style:ElevatedButton.styleFrom(
              textStyle: TextStyle(color: Colors.white),

              padding: EdgeInsets.all(5),



            ),

            onPressed: (){
              Navigator.of(context).pushReplacementNamed("Home");

            },

            child: Text("Log In",style: Theme.of(context).textTheme.bodyLarge),





          ),

        ),

      ],

    ))

  ],

  ),
),
    );
  }
}
