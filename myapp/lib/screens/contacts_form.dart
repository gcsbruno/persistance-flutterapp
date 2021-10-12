import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/contact.dart';

class ContactForm extends StatefulWidget {
  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _accountNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          automaticallyImplyLeading: true,
          title: Text(
            'Novo contato',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nome Completo',
                ),
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              TextField(
                controller: _accountNumberController,
                decoration: InputDecoration(
                  labelText: 'Número da conta',
                ),
                style: TextStyle(
                  fontSize: 24.0,
                ),
                keyboardType: TextInputType.number,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                          onPressed: () {
                            final String name = _nameController.text;
                            final int? accountNumber =
                                int.tryParse(_accountNumberController.text);
                            final Contact newContact =
                                Contact('bruno', 1000, 0);
                            Navigator.pop(context, newContact);
                          },
                          child: Text('Criar'))))
            ],
          ),
        ));
  }
}
