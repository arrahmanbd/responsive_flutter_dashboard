import 'package:flutter/material.dart';

import '../../core/theme/text_theme.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage();

  @override
  SettingsPageState createState() => new SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    bool isSwitched1 = true, isSwitched2 = true;
    bool isSwitched3 = true, isSwitched4 = true;
    bool isSwitched5 = false, isSwitched6 = false;

    return  Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Container()
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text("Settings", style: MyText.headline(context)!.copyWith(
                  fontWeight: FontWeight.bold
              )),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  children: <Widget>[
                    Text("Select Language", style: MyText.subhead(context)!.copyWith(
                        color: Colors.grey[90], fontWeight: FontWeight.bold
                    )),
                    const Spacer(),
                    Text("English, US", style: MyText.subhead(context)!.copyWith(color: Colors.primaries[6])),
                    Container(width: 10)
                  ],
                ),
              ),
            ),
             Divider(height: 8,color:Theme.of(context).scaffoldBackgroundColor,),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Real Time Mode", style: MyText.subhead(context)!.copyWith(
                            color: Colors.grey[90], fontWeight: FontWeight.bold
                        )),
                        const Spacer(),
                        Switch(
                          value: isSwitched1,
                          onChanged: (value) {setState(() { isSwitched1 = value; });},
                          activeColor: Colors.primaries[6],
                          inactiveThumbColor:Theme.of(context).cardColor,inactiveTrackColor:Colors.blueGrey[60],
                        )
                      ],
                    ),
                    Text('Some texts here', style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    Container(height: 15)
                  ],
                ),
              ),
            ),
             Divider(height: 8,color:Theme.of(context).scaffoldBackgroundColor,),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Game Sound", style: MyText.subhead(context)!.copyWith(
                            color: Colors.grey[90], fontWeight: FontWeight.bold
                        )),
                        const Spacer(),
                        Switch(
                          value: isSwitched2,
                          onChanged: (value) {setState(() { isSwitched2 = value; });},
                          activeColor: Colors.primaries[6],
                          inactiveThumbColor:Theme.of(context).cardColor,inactiveTrackColor:Colors.blueGrey[60],
                        )
                      ],
                    ),
                    Text("Sound during gameplay", style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    Container(height: 15)
                  ],
                ),
              ),
            ),
             Divider(height: 8,color:Theme.of(context).scaffoldBackgroundColor,),
            Container(height: 25),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text("Push Notification", style: MyText.subhead(context)!.copyWith(
                   fontWeight: FontWeight.bold
              )),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: <Widget>[
                    Text("Recommended tournaments", style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    const Spacer(),
                    Switch(
                      value: isSwitched3,
                      onChanged: (value) {setState(() { isSwitched3 = value; });},
                      activeColor: Colors.primaries[6],
                      inactiveThumbColor:Theme.of(context).cardColor,inactiveTrackColor:Colors.blueGrey[60],
                    )
                  ],
                ),
              ),
            ),
             Divider(height: 8,color:Theme.of(context).scaffoldBackgroundColor,),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: <Widget>[
                    Text("New Deals & Rewards", style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    const Spacer(),
                    Switch(
                      value: isSwitched4,
                      onChanged: (value) {setState(() { isSwitched4 = value; });},
                      activeColor: Colors.primaries[6],
                      inactiveThumbColor:Theme.of(context).cardColor,inactiveTrackColor:Colors.blueGrey[60],
                    )
                  ],
                ),
              ),
            ),
             Divider(height: 8,color:Theme.of(context).scaffoldBackgroundColor,),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: <Widget>[
                    Text("Occasional promo", style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    const Spacer(),
                    Switch(
                      value: isSwitched5,
                      onChanged: (value) {setState(() { isSwitched5 = value; });},
                      activeColor: Colors.primaries[6],
                      inactiveThumbColor:Theme.of(context).cardColor,inactiveTrackColor:Colors.blueGrey[60],
                    )
                  ],
                ),
              ),
            ),
             Divider(height: 8,color:Theme.of(context).scaffoldBackgroundColor,),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: <Widget>[
                    Text("Event & Match", style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    const Spacer(),
                    Switch(
                      value: isSwitched6,
                      onChanged: (value) {setState(() { isSwitched6 = value; });},
                      activeColor: Colors.primaries[6],
                      inactiveThumbColor:Theme.of(context).cardColor,
                    )
                  ],
                ),
              ),
            ),

             Divider(height: 8,color:Theme.of(context).scaffoldBackgroundColor,),
            Container(height: 25),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text("More", style: MyText.subhead(context)!.copyWith(
                  fontWeight: FontWeight.bold
              )),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text("Ask a Question", style: MyText.body1(context)!.copyWith(
                    color: Colors.grey[400]
                )),
              ),
            ),
             Divider(height: 8,color:Theme.of(context).scaffoldBackgroundColor,),
            InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text("F A Q", style: MyText.body1(context)!.copyWith(
                    color: Colors.grey[400]
                )),
              ),
            ),
             Divider(height: 8,color:Theme.of(context).scaffoldBackgroundColor,),
            InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text("Privacy Policy", style: MyText.body1(context)!.copyWith(
                    color: Colors.grey[400]
                )),
              ),
            ),
             Divider(height: 8,color:Theme.of(context).scaffoldBackgroundColor,),
            Container(height: 15),
          ],
        ),
      ),
    );
  }
}

