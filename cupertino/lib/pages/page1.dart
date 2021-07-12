import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.black,
            largeTitle: Text(
              'Room',
              style: TextStyle(color: CupertinoColors.systemRed),
            ),
            // middle: Text('Chat'),
            leading: Icon(
              CupertinoIcons.chat_bubble,
              color: CupertinoColors.systemRed,
            ),
          ),
          SliverPadding(
            padding: MediaQuery.of(context)
                .removePadding(
                  removeTop: true,
                  removeLeft: true,
                  removeRight: true,
                )
                .padding,
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    child: Material(
                      elevation: 4.0,
                      borderRadius: BorderRadius.circular(5.0),
                      color: index % 2 == 0 ? Colors.black : Colors.red,
                      child: Center(
                        child: Text(index.toString()),
                      ),
                    ),
                  );
                },
                childCount: 200,
              ),
            ),
          )
        ],
      ),
    );
  }
}
