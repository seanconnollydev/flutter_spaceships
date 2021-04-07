import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_spaceships/spaceships.data.gql.dart';
import 'package:flutter_spaceships/spaceships.var.gql.dart';
import 'ferry.dart';
import 'spaceships.req.gql.dart';

void main() async {
  await DotEnv.load();
  final client = createClient();
  runApp(MyApp(client));
}

class MyApp extends StatelessWidget {
  final Client _client;
  MyApp(this._client);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(_client),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Client _client;
  MyHomePage(this._client);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<
        OperationResponse<GGetSpaceshipsData, GGetSpaceshipsVars>>(
      stream: _client.request(GGetSpaceshipsReq()),
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text("Flutter Space Fleet"),
          ),
          body: snapshot.data?.data != null
              ? Text(snapshot.data.data.spaceships.data.first.name)
              : Text('Loading...'),
          floatingActionButton: FloatingActionButton(
            onPressed: () => {},
            tooltip: 'Add a Spaceship',
            child: Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
