import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  String name;
  String numper;
  String goto;
  bool cb;
  int rd;

  SecondPage(this.name, this.numper, this.goto, this.cb, this.rd);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double pay;

  @override
  void initState() {
    super.initState();
    double gov;
    if(widget.cb == true){
      gov = 50;
    }else{
      gov = 0;
    }

    double gotopay;
    if(widget.goto == 'Changmai 940.00 Bath'){
      gotopay = 940;
    }else if(widget.goto == 'Tak 800.50 Bath'){
      gotopay = 800.50;
    }else if(widget.goto == 'Ranong 1200.75 Bath'){
      gotopay = 1200.75;
    }else if(widget.goto == 'Rayong 500.00 Bath'){
      gotopay = 500;
    }else{
      gotopay = 100;
    }
    double dc = (gotopay * int.parse(widget.numper) + widget.rd/100);

    pay = (gotopay * int.parse(widget.numper)) - gov - dc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangkok To Go'),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/bus.png',
              height: 150,
            ),
          ),

          Text(
            'Name : ' + widget.name,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),

          ),

          Text(
            'Go To ' + widget.goto,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
          Text(
            'Num person : ' + widget.numper,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),

          Text(
            'Pay : ${pay.toStringAsFixed(2)}'
          )
        ],
      ),
    );
  }
}
