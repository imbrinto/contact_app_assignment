import 'package:contact_app_assignment/entities/entity.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController numberController;
  final VoidCallback addNewContact;
  final List<Contact> contactList;

  const FormWidget(
      {super.key,
      required this.formKey,
      required this.nameController,
      required this.numberController,
      required this.addNewContact,
      required this.contactList
      });

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
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
              controller: numberController,
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
                  if (formKey.currentState!.validate()) {
                    addNewContact();
                    nameController.clear();
                    numberController.clear();
                  }
                },
                child: const Text('Add to Contacts'))
          ],
        ));
  }
}
