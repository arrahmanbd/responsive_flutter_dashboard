
import 'package:flutter/material.dart';
import '../../core/theme/text_theme.dart';

class AuthPage extends StatefulWidget {

  AuthPage();

  @override
  AuthPageState createState() => new AuthPageState();
}


class AuthPageState extends State<AuthPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text("Sign in", style: MyText.title(context)!.copyWith(
                        color: Colors.primaries[5], fontWeight: FontWeight.bold
                    )),
                    Container(height: 10),
                    Container(height: 4, width:40, color: Colors.primaries[5]),
                    Container(height: 25),
                    Card(
                      color: Theme.of(context).cardColor,
                        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: <Widget>[
                              Container(height: 25),
                              TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    labelText: "USERNAME", labelStyle: MyText.caption(context)
                                ),
                              ),
                              Container(height: 25),
                              TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    labelText: "PASSWORD", labelStyle: MyText.caption(context)
                                ),
                              ),
                              Container(height: 10),
                              InkWell(
                                child: Row(
                                  children: <Widget>[
                                    Checkbox(value: false, onChanged: (value) {}),
                                    Text("Keep me Signed in", style: MyText.body2(context)!.copyWith(
                                        color: Colors.primaries[5]
                                    )),
                                  ],
                                ),
                                onTap: (){ setState(() {}); },
                              ),
                              Container(height: 5),
                              Row(
                                children: <Widget>[
                                  Spacer(),
                                  TextButton(
                                    style: TextButton.styleFrom(foregroundColor: Colors.transparent),
                                    child: Text("Forgot Password?", style: TextStyle(color: Theme.of(context).disabledColor)),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(18),
              width: double.infinity, height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),backgroundColor: Colors.primaries[5], elevation: 0),
                child: Text("SIGNIN", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                onPressed: (){ },
              ),
            ),
            const SizedBox(height: 40.0)
          ],
        ),
      ),
    );
  }
}

