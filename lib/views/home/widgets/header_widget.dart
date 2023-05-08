import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/constants/colors.dart';
import 'package:flutter_dashboard/responsive.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (!Responsive.isDesktop(context))
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () => scaffoldKey.currentState!.openDrawer(),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
              ),
            ),
          if (!Responsive.isMobile(context))
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Theme.of(context).cardColor,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide:
                            const BorderSide(color: Colors.transparent),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      hintText: 'Search',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 21,
                      )),
                ),
              ),
            ),
          if (Responsive.isMobile(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 25,
                  ),
                  onPressed: () {},
                ),
                InkWell(
                  onTap: () => scaffoldKey.currentState!.openEndDrawer(),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      "assets/images/avatar.png",
                      width: 32,
                    ),
                  ),
                )
              ],
            ),
        ],
      ),
    );
  }
}
