import 'package:flutter/material.dart';
import 'contacts_listing.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  List contacts = [];
  void _addContacts() {
    setState(() {
      contacts.add({'name': "Mintu Roy"});
    });
  }

  void _deleteContacts(String id) {
    setState(() {
      contacts.removeWhere((contacts) => contacts['name'] == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      // drawer: const Drawer(),
      body: ContactsListing(
        onAdd: _addContacts,
        contactList: contacts,
        onDelete: _deleteContacts,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            tooltip: "Refresh List",
            child: const Icon(Icons.refresh),
            backgroundColor: Colors.purple,
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: _addContacts,
            tooltip: "Add Contacts",
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
