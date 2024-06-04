import 'package:contact_app_assignment/entities/entity.dart';
import 'package:flutter/material.dart';

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({
    super.key,
  });

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _numberTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<Contact> contactList = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameTEController,
                      validator: (String? value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter a valid input';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: 'Contact Name',
                        labelText: 'Contact Name',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _numberTEController,
                      keyboardType: TextInputType.number,
                      validator: (String? value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter a valid input';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: 'Contact Number',
                        labelText: 'Contact Number',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _addNewContact();
                            _nameTEController.clear();
                            _numberTEController.clear();
                          }
                        },
                        child: const Text('Add to Contacts'))
                  ],
                )),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: contactList.length,
              itemBuilder: (context, index) {
                Contact contact = contactList[index];
                return Card(
                  surfaceTintColor: Colors.cyanAccent,
                  elevation: 3,
                  child: GestureDetector(
                    onLongPress: (){
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: const Text('Confirmation'),
                          content: const Text('Are you sure for Delete?'),
                          actions: [
                            IconButton(onPressed: (){
                              _deleteContact(index);
                              Navigator.pop(context);
                            }, icon: const Icon(Icons.delete,color: Colors.cyanAccent,),),
                            IconButton(onPressed: (){
                              Navigator.pop(context);
                            }, icon: const Icon(Icons.cancel,color: Colors.cyanAccent,),),
                          ],
                        );
                      });
                    },
                    child: ListTile(
                      leading: const Icon(
                        Icons.account_box,
                        color: Colors.blue,
                      ),
                      title: Text('${contact.name}'),
                      subtitle: Text('${contact.number}'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.call,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _addNewContact() {
    contactList.add(Contact(_nameTEController.text, _numberTEController.text));
    if (mounted) {
      setState(() {});
    }
  }

  void _deleteContact(int index) {
    contactList.removeAt(index);
    if (mounted) {
      setState(() {});
    }
  }
  @override
  void dispose() {
    super.dispose();
    _numberTEController.dispose();
    _nameTEController.dispose();
  }
}
