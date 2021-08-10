import 'package:flutter/material.dart';
import 'package:tab_bar/settings_widget.dart';
import 'package:tab_bar/home_widget.dart';

class TabsController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              centerTitle: true,
              title: Text('Scrollable Tabs Demo'),
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.search),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                  Tab(icon: Icon(Icons.mail)),
                  Tab(
                    icon: Icon(Icons.radio),
                  ),
                  Tab(
                    icon: Icon(Icons.circle),
                  ),
                  Tab(
                    icon: Icon(Icons.gesture),
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            Anonymous(),
            Icon(
              Icons.directions_transit,
              size: 350,
            ),
            Icon(
              Icons.directions_car,
              size: 350,
            ),
            Icon(
              Icons.mail,
              size: 350,
            ),
            Icon(
              Icons.radio,
              size: 350,
            ),
            Icon(
              Icons.camera,
              size: 350,
            ),
            Icon(
              Icons.gesture,
              size: 350,
            ),
            OpenSetting(),
          ],
        ),
      )),
    );
  }
}
