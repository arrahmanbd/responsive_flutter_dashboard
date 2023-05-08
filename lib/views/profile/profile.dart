import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/theme/text_theme.dart';

class ProfileView extends StatefulWidget {

  ProfileView();

  @override
  ProfileViewState createState() => new ProfileViewState();
}


class ProfileViewState extends State<ProfileView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0, systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              floating: false, pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('assets/images/profile_bg.jpg',fit: BoxFit.fill,)
              ),
              // leading: IconButton(
              //   icon: const Icon(Icons.menu),
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              // ),
              // actions: <Widget>[
              //   IconButton(
              //     icon: const Icon(Icons.search),
              //     onPressed: () {},
              //   ),// overflow menu
              //   PopupMenuButton<String>(
              //     onSelected: (String value){},
              //     itemBuilder: (context) => [
              //       PopupMenuItem(
              //         value: "Settings",
              //         child: Text("Settings"),
              //       ),
              //     ],
              //   )
              // ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Container(
                  transform: Matrix4.translationValues(0, 50, 0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[200],
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage("assets/images/avatar.png"),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Container(height: 70),
                Text("Mst. Mina", style: MyText.headline(context)!.copyWith(
                     fontWeight: FontWeight.bold
                )),
                Container(height: 15),
                Text('Nulla faucibus tempus erat, vitae congue dolor interdum a. Morbi aliquam eget nunc nec convallis. Donec vel nunc sed tellus varius pellentesque eu a arcu. Fusce ac eros non purus feugiat rutrum.', textAlign : TextAlign.center, style: MyText.subhead(context)!.copyWith(
                     color: Theme.of(context).primaryColor,
                )),
                Container(height: 25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      primary: Colors.primaries[5]
                  ),
                  child: Text("Account Settings", style: TextStyle(color: Colors.white)),
                  onPressed: (){},
                ),
                Container(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("8825", style: MyText.title(context)!.copyWith(
                               fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Followers", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("1766", style: MyText.title(context)!.copyWith(
                               fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Following", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("8.5", style: MyText.title(context)!.copyWith(
                               fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Social score", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                  ],
                ),
                Container(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("8825", style: MyText.title(context)!.copyWith(
                               fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Followers", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("1766", style: MyText.title(context)!.copyWith(
                               fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Following", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("8.5", style: MyText.title(context)!.copyWith(
                               fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Social score", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(height: 50, color: Theme.of(context).primaryColor,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eros lorem, pulvinar ut lectus ac, maximus convallis sem. Ut dictum cursus tellus sit amet rhoncus. Sed in porttitor lacus, dictum tristique mauris. Donec iaculis nunc at ligula feugiat tristique in sed risus. Integer quis urna felis. Sed sed vulputate magna. Proin quis varius mi. Maecenas condimentum felis sit amet porta cursus. Nunc et risus pharetra, congue augue vel, congue tellus. Aliquam sapien dolor, vehicula vel ipsum at, ullamcorper scelerisque justo. Quisque eleifend dolor nec odio condimentum finibus. Nam aliquet orci in ex pulvinar pretium. Maecenas laoreet, lorem a euismod feugiat, diam neque viverra erat, nec porttitor metus turpis ac dolor.', textAlign : TextAlign.justify, style: MyText.subhead(context)!.copyWith(
                    
                )),
                Container(height: 35),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

