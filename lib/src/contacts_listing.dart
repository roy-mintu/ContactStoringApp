import 'package:flutter/material.dart';
import 'no_contacts_screen.dart';

class ContactsListing extends StatelessWidget {
  final List contactList;
  final VoidCallback onAdd;
  final Function(String id) onDelete;

  const ContactsListing({
    Key? key,
    required this.contactList,
    required this.onAdd,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contactList.isEmpty
        ? NoContacts(
            onAdd: onAdd,
          )
        : ListView(
            children: [
              ...contactList
                  .map<Widget>(
                    (contacts) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        leading: const CircleAvatar(
                          child: Icon(Icons.person_outline),
                        ),
                        title: Text(
                          contacts['name'],
                          style: const TextStyle(fontSize: 20),
                        ),
                        trailing: TextButton(
                            child: const Icon(
                              Icons.delete,
                            ),
                            // onPressed: () => {},
                            onPressed: () {
                              onDelete(contacts['name']);
                            }),
                      ),
                    ),
                  )
                  .toList(),
              const SizedBox(
                height: 80,
              )
            ],
          );
  }
}
