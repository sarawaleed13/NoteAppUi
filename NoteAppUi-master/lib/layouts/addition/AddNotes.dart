import'package:flutter/material.dart';
class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("Add Notes "),

        ),
      body: Container(
        child: Column(
          children: [
            Form(child: Column(
              children: [
                TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  maxLength:30,
                  decoration: InputDecoration(

                    filled: true,
                    fillColor: Colors.white,
                    labelText:"Note Title",
                    prefixIcon: Icon(Icons.note_alt,color: Theme.of(context).primaryColor,),
                  )
                ),
                TextFormField(
                    maxLines: 3,
                    minLines: 1,
                    maxLength: 200,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText:"Note",
                      prefixIcon: Icon(Icons.note_alt,color: Theme.of(context).primaryColor,),
                    )
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                    onPressed:(){
                      setState(() {
                        ShowButtonSheet();
                      });
                    },
                    child: Text("Add Image")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    onPressed:(){},
                    child: Text("Add a Note")),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
  ShowButtonSheet(){

  dynamic context;
  return showModalBottomSheet (context: context,builder: (context){
    return Container(
      height: 170,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Choose image",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),),
          InkWell (
            onTap: (){},
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.camera),
                    SizedBox(width: 20,),
                    Text("From Gallery",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                    ),
                  ],
                ),),
          ),
          InkWell (
            onTap: (){},
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.camera_alt),
                  SizedBox(width: 20,),
                  Text("From Camera",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                  ),
                ],
              ),),
          ),


        ],
      ),
    );
  },
  );
 }
