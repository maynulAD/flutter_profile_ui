import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactListPage(),
    );
  }
}

class ContactListPage extends StatelessWidget {
  ContactListPage({super.key});

  final List<Map<String, String>> contacts = [
    {"name": "Ferdous", "phone": "01877-666666"},
    {"name": "Ferdous", "phone": "01673-876547"},
    {"name": "Hasan", "phone": "01745-777777"},
    {"name": "Rabbi", "phone": "01745-709876"},
    {"name": "Ahad", "phone": "01745-777777"},
    {"name": "Hasan", "phone": "01745-777889"},
    {"name": "Rahin", "phone": "01745-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
    {"name": "Golam", "phone": "01745-777777"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Maynul",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            TextFormField(
              decoration: const InputDecoration(
                hintText: "01745-456433",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey, // Button color
                  foregroundColor: Colors.white, // Text color
                ),
                child: const Text("Add"),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(
                        Icons.person,
                        size: 35,
                        color: Colors.brown,
                      ),

                      title: Text(
                        contacts[index]["name"]!,
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      subtitle: Text(contacts[index]["phone"]!),

                      trailing: const Icon(Icons.call, color: Colors.blue),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
