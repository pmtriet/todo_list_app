import 'package:flutter/material.dart';
import 'package:todo_list_app/Models/items.dart';
import 'package:todo_list_app/widgets/card_body_widget.dart';
import 'package:todo_list_app/widgets/card_model_button.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<DataItems> items = [
    DataItems(id: "1", name: "Coding"),
    DataItems(id: "2", name: "Reading"),
    DataItems(id: "3", name: "Sleeping"),
    DataItems(id: "4", name: "Eating"),
    DataItems(id: "5", name: "Playing"),
    DataItems(id: "1", name: "Coding"),
    DataItems(id: "2", name: "Reading"),
    DataItems(id: "3", name: "Sleeping"),
    DataItems(id: "4", name: "Eating"),
    DataItems(id: "5", name: "Playing"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Todo List App",
          style: TextStyle(fontSize: 40),
        ),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: items.map((item) => CardBody(item: item)).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.grey[400],
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              isScrollControlled: true,
              context: context,
              builder: (
                BuildContext content,
              ) {
                return const ModalButton();
              });
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
