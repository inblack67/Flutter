import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),theme: themeData,));
}

final ThemeData themeData = ThemeData(
  canvasColor: Colors.black,
  accentColor: Colors.red
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx){
    return Scaffold(
      body: Center(child: TextButton(child: Text('Push'), onPressed: (){
        Navigator.push(ctx, PageTwo());
      },),)
    );
  }
}

class PageTwo extends MaterialPageRoute<Null>{
  PageTwo(): super(builder: (BuildContext ctx){
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(ctx).canvasColor,),
      body: Center(child: TextButton(child: Text('Push Again'),onPressed: (){
        Navigator.push(ctx, PageThree());
      },),),
    );
  });
}

class PageThree extends MaterialPageRoute<Null> {
  PageThree() : super(builder: (BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Last Page!"),
        backgroundColor: Theme.of(ctx).accentColor,
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: (){
              Navigator.pop(ctx);
            },
          )
        ],
      ),
      body: Center(
        child: TextButton(child: Text('Home'), onPressed: (){
            Navigator.popUntil(ctx, ModalRoute.withName(Navigator.defaultRouteName));
        },),
      ),
    );
  });

}
