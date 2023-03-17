import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: const Center(child: Text('ACHTUNG...!!!,\nProtect your Data Securely')),),
      body: MyProject(),
      ),
    );
  }
}



class MyProject extends StatefulWidget {
  MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

final Uri _url= Uri.parse('http://192.168.1.100:8087/restapi_withname_json/restapi_insert.php');



class _MyProjectState extends State<MyProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: (){_launchUrl();}, child: const Center(child: Text('One click, Data from REST API\nwill move to local database'))),
    );
  }
}


Future<void> _launchUrl() async {
  if(!await launchUrl(_url)){
    throw 'Could not launch $_url';
  }
}
