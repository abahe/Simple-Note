
import 'package:flutter/material.dart';
import 'package:todolist/pages/edit_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Note', style: TextStyle(color: Colors.white),),
        elevation: 2,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Title',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 8,),
          Text(
            'Content',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const EditPage();
          })
          );
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
