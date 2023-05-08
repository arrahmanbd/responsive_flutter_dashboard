import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_dashboard/views/home/widgets/header_widget.dart';
import 'package:flutter_dashboard/responsive.dart';
import 'package:flutter_dashboard/views/home/widgets/activity_details_card.dart';
import 'package:flutter_dashboard/views/home/widgets/bar_graph_card.dart';
import 'package:flutter_dashboard/views/home/widgets/line_chart_card.dart';

import '../../core/constants/colors.dart';

class HomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomePage({super.key, required this.scaffoldKey});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    SizedBox _height(BuildContext context) => SizedBox(
          height: Responsive.isDesktop(context) ? 30 : 20,
        );

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).cardColor,
          elevation: 0,
          title: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Header(scaffoldKey: widget.scaffoldKey,)
          ),
        ),
        body: SingleChildScrollView(
          controller: _controller,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isMobile(context) ? 15 : 18),
            child: Column(
              children: [
                SizedBox(
                  height: Responsive.isMobile(context) ? 5 : 18,
                ),
                _height(context),
                const ActivityDetailsCard(),
                _height(context),
                LineChartCard(),
                _height(context),
                BarGraphCard(),
                _height(context),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _controller.animateTo(
              500.0,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
          child: Icon(Icons.arrow_downward),
        ),
      ),
    );
  }
}
