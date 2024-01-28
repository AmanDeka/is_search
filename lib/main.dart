import 'package:flutter/material.dart';
import 'package:is_search/theme.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '/components/internship_card.dart';
import 'dart:developer';
import '/internship_info.dart';

void main() {
  runApp(const MainApp());
}

InternshipInfo mapper(int id, Map<String, dynamic> body) {
  return InternshipInfo.fromJson(body['internships_meta'][id.toString()]);
}

Future<List<InternshipInfo>> getCards() async {
  var url = Uri.parse("https://internshala.com/flutter_hiring/search");
  final response =
      await http.get(url, headers: {"Content-Type": "application/json"});
  final Map<String, dynamic> body = json.decode(response.body);
  List<InternshipInfo> list = [];
  for (int i in body['internship_ids']) {
    InternshipInfo info = mapper(i, body);
    list.add(info);
  }
  return list;
}

Widget buildCards(List<InternshipInfo> cards) {
  return ListView.builder(
    itemCount: cards.length,
    itemBuilder: (context, index) {
      final card = cards[index];
      return InternshipCardWidget(
          companyName: card.companyName,
          internshipName: card.internshipName,
          duration: card.duration,
          stipend: card.stipend,
          start: card.start,
          locationName:
              (card.wfh == true) ? 'Work from Home' : card.locationName,
          image: "",
          l1: card.l1,
          l2: (card.wfh == true) ? 'Work from Home' : '' 
          );
    },
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //String internships = json.decode(res.body).toString();
    Future<List<InternshipInfo>> cardsFuture = getCards();

    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryBackground,
        appBar: AppBar(
          title: const Text('Internshala Search'),
          centerTitle: false,
          backgroundColor: Colors.white,
        ),
        body: FutureBuilder<List<InternshipInfo>>(
          future: cardsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              final cards = snapshot.data!;
              return buildCards(cards);
            } else {
              return const Text("No data available");
            }
          },
        ),
      ),
    );
  }
}
