import 'package:flutter/material.dart';
import 'package:newapp/Auth/LoginPage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url:"https://eedcxzbjmamslvdfmhwp.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVlZGN4emJqbWFtc2x2ZGZtaHdwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjMzNTcyMzYsImV4cCI6MjA3ODkzMzIzNn0.QUS9hYRVA6ehC34nLuSaDVGTeAOmJ8OcXf3q_3VOyBY",//api key
     );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

