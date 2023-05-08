import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/theme/text_theme.dart';

class TimeLine extends StatefulWidget {
  TimeLine();

  @override
  TimeLineState createState() => new TimeLineState();
}

class TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
            backgroundColor: Theme.of(context).cardColor,
            elevation: 0,
            title: Text("My Feed",
                style: MyText.title(context)!.copyWith(color: Colors.grey[80])),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: Colors.lightBlue[500]),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.message_outlined, color: Colors.lightBlue[500]),
                onPressed: () {},
              )
            ]),
        floatingActionButton: FloatingActionButton(
          heroTag: "fab3",
          backgroundColor: Colors.lightBlue[500],
          elevation: 3,
          child: Icon(
            Icons.create,
            color: Colors.white,
          ),
          onPressed: () {
            print('Clicked');
          },
        ),
        body: ListView.builder(
          itemCount: 34,
          itemBuilder: (c, i) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(
                height: 8,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              Container(
                color: Theme.of(context).cardColor,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset('assets/images/avatar.png',
                        height: 50, width: 50, fit: BoxFit.cover),
                    Container(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text("Mst. Mina ",
                                  style: MyText.subhead(context)!
                                      .copyWith(fontWeight: FontWeight.bold)),
                              Text("@mina  1m",
                                  style: MyText.body1(context)!
                                      .copyWith(color: Colors.primaries[6])),
                              Spacer(),
                              Icon(Icons.expand_more,
                                  color: Colors.primaries[6], size: 20),
                            ],
                          ),
                          Text(
                              'We’re starting with simple features to create, refactor, and debug with a vision to build a supercharged, free-to-use coding assistant built for and by Flutter Engineers.',
                              style: MyText.subhead(context)!
                                  .copyWith(fontWeight: FontWeight.w300)),
                          Container(height: 15),
                          Row(
                            children: <Widget>[
                              Icon(Icons.undo,
                                  color: Colors.primaries[6], size: 15),
                              Text(" 1",
                                  style: MyText.body1(context)!
                                      .copyWith(color: Colors.primaries[6])),
                              Spacer(),
                              Icon(Icons.repeat,
                                  color: Colors.primaries[6], size: 15),
                              Text(" 5",
                                  style: MyText.body1(context)!
                                      .copyWith(color: Colors.primaries[6])),
                              Spacer(),
                              Icon(Icons.favorite,
                                  color: Colors.primaries[6], size: 15),
                              Text(" 10",
                                  style: MyText.body1(context)!
                                      .copyWith(color: Colors.primaries[6])),
                              Spacer(),
                              Icon(Icons.chat,
                                  color: Colors.primaries[6], size: 15),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
