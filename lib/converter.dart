import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});
  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  double result = 0;

  TextEditingController textEditingController = TextEditingController();

  void convert() {
    final text = textEditingController.value.text;
    if (text.isEmpty) {
      errorText = 'Can\'t be empty';
    } else {
      errorText = null;
      result = double.parse(textEditingController.text) * 122.23;
    }
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  String? errorText;

  @override
  Widget build(Object context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blueGrey,
        width: 2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(40)),
    );

    final textStyle = TextStyle(
      color: Colors.blueGrey,
      fontSize: 23,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Currency Converter",
        ),
        elevation: 5,
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 500,
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('USD ', style: textStyle),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.blueGrey,
                      ),
                      Text(' BDT', style: textStyle),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      errorText: errorText,
                      errorBorder: border,
                      focusedErrorBorder: border,
                      label: Text("Amount"),
                      hintText: "Enter amount",
                      prefixIcon: Icon(Icons.monetization_on),
                      prefixIconColor: Colors.blueGrey,
                      focusedBorder: border,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () => convert(),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        foregroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        minimumSize: Size(double.infinity, 50)),
                    child: Text("Convert"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'BDT ${result.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}