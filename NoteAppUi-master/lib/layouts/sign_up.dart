import 'package:flutter/material.dart';
class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
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
                  decoration:InputDecoration(
                    hintText: "Email",
                    prefixIcon:Icon(Icons.person) ,

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
                      Text("if you have an account ?"),
                      InkWell(
                          onTap: (){

                              Navigator.of(context).pushNamed("login");

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
                    onPressed: (){},
                    child: Text("Sign Up",style: Theme.of(context).textTheme.bodyLarge),


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
