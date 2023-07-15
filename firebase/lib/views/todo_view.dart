import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  bool isCompleted = false;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<void> addTodo() async {
    final db = FirebaseFirestore.instance;
    final todos = Todo(
      title: _titleController.text,
      description: _descriptionController.text,
      isCompleted: isCompleted,
      author: _authorController.text,
    );
    await db.collection('todos').add(todos.toMap());
  }

  Future<void> readData() async {
    final db = FirebaseFirestore.instance;
    await db.collection("todos").get().then((event) {
      for (var doc in event.docs) {
        ("${doc.id} => ${doc.data()}");
      }
    });
  }

  @override
  void initState() {
    readData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Todo View'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          top: 20,
          right: 10,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ('Your title is empty');
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Title',
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _descriptionController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ('Your description is empty');
                  } else {
                    return null;
                  }
                },
                maxLines: 8,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Description',
                  filled: true,
                ),
              ),
              CheckboxListTile(
                value: isCompleted,
                onChanged: (v) {
                  setState(
                    () {
                      isCompleted = v!;
                    },
                  );
                },
              ),
              TextFormField(
                controller: _authorController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ('Author is unknown');
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Author',
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const SimpleDialog(
                          title: Text(
                            'The information is being uploaded',
                            textAlign: TextAlign.center,
                          ),
                          children: [
                            CupertinoActivityIndicator(
                              radius: 20,
                              color: Colors.blue,
                            ),
                          ],
                        );
                      },
                    );
                    await addTodo();
                    // ignore: use_build_context_synchronously
                    Navigator.popUntil(context, (route) => route.isFirst);
                  } else {
                    null;
                  }
                },
                icon: const Icon(Icons.arrow_upward, color: Colors.white),
                label: const Text(
                  'Upload',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
