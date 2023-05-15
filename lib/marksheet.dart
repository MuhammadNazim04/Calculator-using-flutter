import 'package:flutter/material.dart';

class MarkSheet extends StatefulWidget {
   const MarkSheet({Key? key}) : super(key: key);

  @override
  State<MarkSheet> createState() => MarkSheetState();
}

class MarkSheetState extends State<MarkSheet> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  int? result=0, num1=0, num2=0;

  add(){
    setState(() {
      num1= int.parse(controller1.text);
      num2= int.parse(controller2.text);
      result=num1! + num2!;

    });
  }
  sub(){
    setState(() {
      num1= int.parse(controller1.text);
      num2= int.parse(controller2.text);
      result=num1! - num2!;

    });
  }
  mul(){
    setState(() {
      num1= int.parse(controller1.text);
      num2= int.parse(controller2.text);
      result=num1! * num2!;

    });
  }
  div(){
    setState(() {
      num1= int.parse(controller1.text);
      num2= int.parse(controller2.text);
      result=num1! ~/ num2!;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MarkSheet')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:  [
             Text(
              "Result: $result",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller1,
                decoration: const InputDecoration(
                  labelText: "Enter First Number",
                  border:  OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             TextField(
              controller: controller2,
              decoration: const InputDecoration(
                labelText: "Enter Second Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  add();
                  controller1.clear();
                  controller2.clear();
                }, child: const Text("Add")),

                ElevatedButton(onPressed: (){
                  sub();
                  controller1.clear();
                  controller2.clear();

                },
                    //style: ButtonStyle(padding: 40.0),
                    child: const Text("Sub")),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  mul();
                  controller1.clear();
                  controller2.clear();
                }, child: const Text("Mul")),
                ElevatedButton(onPressed: (){
                  div();
                  controller1.clear();
                  controller2.clear();
                }, child: const Text("Div")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
