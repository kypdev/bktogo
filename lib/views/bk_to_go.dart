import 'package:flutter/material.dart';

class BkToGo extends StatefulWidget {
  @override
  _BkToGoState createState() => _BkToGoState();
}

class _BkToGoState extends State<BkToGo> {
  List ddDatas;
  List<DropdownMenuItem<String>> ddDataToDD = [];
  String ddDataSelected;
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController numpersonCtrl = TextEditingController();
  bool cbSelected;
  int rdDiscount;

  @override
  void initState() {
    super.initState();
    ddDatas = [
      'Changmai 940.00 Bath',
      'Tak 800.50 Bath',
      'Ranong 1200.75 Bath',
      'Rayong 500.00 Bath',
      'Yala 100.00 Bath'
    ];

    for (int i = 0; i < ddDatas.length; i++) {
      ddDataToDD.add(DropdownMenuItem(
        child: Text(
          ddDatas[i],
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        value: ddDatas[i],
      ));
    }

    ddDataSelected = ddDatas[0];
    cbSelected = false;
    rdDiscount = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Bangkok To Go',
        ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/bus.png',
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: TextField(
              controller: nameCtrl,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                ),
                hintText: 'Name',
                labelText: 'Name',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Bangkok To',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                items: ddDataToDD,
                value: ddDataSelected,
                isExpanded: true,
                onChanged: (data) {
                  setState(() {
                    ddDataSelected = data;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: TextField(
              controller: numpersonCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.group,
                  ),
                  hintText: 'Numerson',
                  labelText: 'Numperson'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: cbSelected,
                  onChanged: (data) {
                    setState(() {
                      cbSelected = data;
                    });
                  },
                ),
                Text('Governer discount 50 Bath'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: rdDiscount,
                  onChanged: (data) {
                    setState(() {
                      rdDiscount = data;
                    });
                  },
                ),
                Text('dc 0 %'),
                Radio(
                  value: 5,
                  groupValue: rdDiscount,
                  onChanged: (data) {
                    setState(() {
                      rdDiscount = data;
                    });
                  },
                ),
                Text(
                  'rd 5 %',
                ),
                Radio(
                  value: 10,
                  groupValue: rdDiscount,
                  onChanged: (data) {
                    setState(() {
                      rdDiscount = data;
                    });
                  },
                ),
                Text('rd 10 %'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: RaisedButton(
                    color: Colors.red,
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
