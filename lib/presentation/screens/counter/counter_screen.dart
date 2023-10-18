import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh_rounded),
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            }
          )
        ]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Click${ clickCounter == 1 ? '' : 's' }', style: TextStyle(fontSize: 25))
          ]
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end, //Boton en la esquina
        children: [
          FloatingActionButton(
            onPressed: (){
              clickCounter++;
                setState(() {});
          },
          child: const Icon(Icons.plus_one),
          ),

          const SizedBox(height: 10,),

          FloatingActionButton(
            onPressed: (){
              clickCounter--;
              setState(() {
                
              });
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
            )
        ],
      ),
    );
  }
}