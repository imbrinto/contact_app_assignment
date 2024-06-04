import 'package:contact_app_assignment/entities/entity.dart';
import 'package:contact_app_assignment/ui/widgets/delete_diolog_box.dart';
import 'package:contact_app_assignment/ui/widgets/form_widget.dart';
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
            FormWidget(formKey: _formKey, nameController: _nameTEController, numberController: _numberTEController, addNewContact: _addNewContact, contactList: contactList),
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
                      deleteAlertdialogBox(context, _deleteContact, index);
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

