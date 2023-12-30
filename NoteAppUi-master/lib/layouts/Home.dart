import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes=[{
    "note": "the first lesson, there are a lot of things should be done  ",
    "image":"1.jpg",
    },
{
"note":"the second lesson, there are a lot of things should be done  ",
  "image":"1.jpg",
},
{"note":"the third lesson, there are a lot of things should be done ",
  "image" : "1.jpg"
},
{ "note":"the fourth lesson, there are a lot of things should be done ",
  "image":"1.jpg",
},
{ "note":"the fifth lesson, there are a lot of things should be done ",
  "image":"1.jpg",
},
{"note":"the sixth lesson, there are a lot of things should be done ",
  "image":"1.jpg",
},
{ "note":"the seventh lesson, there are a lot of things should be done ",
  "image":"1.jpg",
},
{  "note":"the eighth lesson, there are a lot of things should be done ",
  "image":"1.jpg",
  }];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Theme.of(context).primaryColor,
  title: Text("Home Page"),
  centerTitle: true,
),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.of(context).pushNamed('AddNote');
        },
        child: Icon(Icons.add,),
      ),


      body: Container(
child: ListView.builder(itemBuilder: (context,i){
return Dismissible(key: Key('$i'),child: ListNotes(notes:notes[i] ,));},
itemCount: notes.length,
),

      ),
    );
  }
}



class ListNotes extends StatelessWidget{
final notes;
ListNotes({this.notes});

  @override
  Widget build(BuildContext context){
return  Card(
  child:   Row(
    children: [
      // Expanded(
      //   child: Image.network('',fit: BoxFit.cover,height: 80,),
      // ),
      Expanded(
        child: ListTile(
          title: Text("Title"),
       subtitle: Text("${notes['note']}"),
       // // subtitle: ElevatedButton(
       //    style: ElevatedButton.styleFrom(
       //      backgroundColor: Theme.of(context).primaryColor,
       //
       //    ),
       //    child: Text("Delete"),
       //    onPressed: (){},
       //  ),
        trailing: IconButton(

          onPressed: (){},

          icon: Icon(Icons.edit),

        ),),
      ),

    ],
  ),
);
  }
}