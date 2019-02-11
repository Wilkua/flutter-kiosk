import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order Kiosk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Landing(),
    );
  }
}

class Landing extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: DecoratedBox(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/33381850-bakery.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4),
                            BlendMode.darken,
                        ),
                    ),
                ),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            Text(
                                'Basic Bakery',
                                style: Theme.of(context).textTheme.display4.apply(color: Colors.white),
                            ),
                            RaisedButton(
                                child: Text(
                                  'START AN ORDER',
                                  style: Theme.of(context).textTheme.display2,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => OrderMenu()),
                                  );
                                },
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}

class OrderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Order'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Oops!",
              style: Theme.of(context).textTheme.display4,
            ),
            Text(
              "Looks like you're missing your menu.",
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      )
    );
  }
}