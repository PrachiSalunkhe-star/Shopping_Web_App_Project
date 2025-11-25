

import 'package:flutter/material.dart';
import 'package:newapp/common/CustomAppBar.dart';
import 'package:newapp/common/CustomBottomBar.dart';
import 'package:newapp/common/CustomDrawer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  final String phone = '9403289332';
  final String whatsapp = '9403289332';
  final String email = 'prachisalunkhe877@gmail.com';

  //launcher Mode

  Future<void> _callNow() async {
    final Uri uri = Uri(scheme: 'tel', path: phone);
    await launchUrl(uri);
  }

  Future<void> _sendWhatsapp() async {
    final Uri uri = Uri.parse("https://wa.me/$whatsapp?text=Hello");
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  Future<void> _sendEmail() async {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: email,
      query: "subject=support &body=Hello!",
    );
    await launchUrl(uri);
  }

  //on submit

  //supabase contact database

  Future<void> _saveToSupabase() async {
    final supabase = Supabase.instance.client;
    final response = await supabase.from('contact').insert({
      'name': nameController.text,
      'email': emailController.text,
      'phone': phoneController.text,
      'message': messageController.text,
    });
    print("Inserted responce");
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      await _saveToSupabase();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Message Send Successfully !")),
      );
      //clear filds
      nameController.clear();
      emailController.clear();
      phoneController.clear();
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Contact'),
      bottomNavigationBar: CustomBottomBar(currentIndex: 2),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Name", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your name",
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "Name is Required" : null,
                  ),
                  SizedBox(height: 20),

                  Text("Email", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your email",
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "Email is Required" : null,
                  ),
                  SizedBox(height: 20),

                  Text("Phone", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your phone number",
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "Number is Required" : null,
                  ),
                  SizedBox(height: 20),

                  Text("Message", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    controller: messageController,
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your Message",
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "Message is Required" : null,
                  ),
                  SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _submitForm,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                      ),
                      child: Text(
                        "send Message ",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            //launcher button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //call
                Column(
                  children: [
                    IconButton(
                      onPressed: _callNow,
                      icon: Icon(Icons.call, size: 30, color: Colors.blue),
                    ),
                    Text("call"),
                  ],
                ),
                //Whatsapp
                Column(
                  children: [
                    IconButton(
                      onPressed: _sendWhatsapp,
                      icon: Icon(
                        Icons.message_sharp,
                        size: 30,
                        color: const Color.fromARGB(255, 3, 156, 42),
                      ),
                    ),
                    Text(" Whatsapp "),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: _sendEmail,
                      icon: Icon(
                        Icons.email,
                        size: 30,
                        color: const Color.fromARGB(255, 37, 9, 199),
                      ),
                    ),
                    Text("Email"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}