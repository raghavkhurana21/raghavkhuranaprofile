import 'package:flutter/material.dart';
import 'data.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 70, // Image radius
                      backgroundImage: AssetImage(profileAsset),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              firstName.toUpperCase(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  fontFamily: 'Ubuntu'),
                            ),
                            const Text(
                              lastName,
                              style:
                                  TextStyle(fontSize: 20, fontFamily: 'Ubuntu'),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Image.asset(
                                    ghAsset,
                                    height: 30,
                                    width: 30,
                                  ),
                                  onPressed: () =>
                                      {launchUrlStart(url: githubUrl)},
                                ),
                                IconButton(
                                  icon: Image.asset(
                                    liAsset,
                                    height: 30,
                                    width: 30,
                                  ),
                                  onPressed: () =>
                                      {launchUrlStart(url: linkedInUrl)},
                                )
                              ],
                            )
                          ],
                        ))
                  ],
                )),
            const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  summary,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 0, 8),
                child: Text(
                  'PERSONAL DETAILS',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 73, 99)),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 4.0, 0, 0),
                child: Text(
                  "DOB: $dob",
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 4.0, 0, 0),
                child: Text(
                  "Phone number: $phoneNumber",
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 4.0, 0, 0),
                child: Text(
                  "Email: $email",
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 4.0, 0, 0),
                child: Text(
                  "Address: $address",
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 0, 8),
                child: Text(
                  'SKILLS',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 73, 99)),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      cppAsset,
                      height: skillAssetSize,
                      width: skillAssetSize,
                    ),
                    Image.asset(
                      cssAsset,
                      height: skillAssetSize,
                      width: skillAssetSize,
                    ),
                    Image.asset(
                      htmlAsset,
                      height: skillAssetSize,
                      width: skillAssetSize,
                    ),
                    Image.asset(
                      sqlAsset,
                      height: skillAssetSize,
                      width: skillAssetSize,
                    ),
                    Image.asset(
                      jsAsset,
                      height: skillAssetSize,
                      width: skillAssetSize,
                    )
                  ],
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 0, 8),
                child: Text(
                  'EDUCATION',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 73, 99)),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 4.0, 0, 0),
                child: Text(
                  college,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(20.0, 4.0, 0, 0),
                child: Text(
                  "$degree, $degreeCGPA",
                  style: TextStyle(),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(20.0, 4.0, 0, 0),
                child: Text(
                  degreeYear,
                  style: TextStyle(),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 8.0, 0, 0),
                child: Text(
                  school,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(20.0, 4.0, 0, 0),
                child: Text(
                  schoolResult,
                  style: TextStyle(),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(20.0, 4.0, 0, 0),
                child: Text(
                  schoolYear,
                  style: TextStyle(),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 24.0, 0, 8),
                child: Text(
                  'CERTIFICATIONS',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 73, 99)),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 4.0, 0, 0),
                child: Text(
                  courseName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(20.0, 4.0, 0, 0),
                child: Text(
                  issuer,
                  style: TextStyle(),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(20.0, 4.0, 0, 0),
                child: Text(
                  issuedIn,
                  style: TextStyle(),
                )),
          ]),
        ),
      ),
    );
  }
}

Future<void> launchUrlStart({required String url}) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}
