import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_spaceships/spaceships.data.gql.dart';
import 'package:flutter_spaceships/spaceships.var.gql.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'spaceships.req.gql.dart';

void main() async {
  await DotEnv.load();
  final client = Client(
    link: HttpLink("https://graphql.fauna.com/graphql", defaultHeaders: {
      'Authorization': 'Bearer ${DotEnv.env["FAUNA_KEY"]}',
    }),
  );
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
              ? SpaceshipList(snapshot.data.data.spaceships)
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

class SpaceshipList extends StatelessWidget {
  final GGetSpaceshipsData_spaceships _spaceships;
  SpaceshipList(this._spaceships);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _spaceships.data.length,
      itemBuilder: (context, i) {
        final spaceship = _spaceships.data[i];
        return ListTile(
          title: Text(spaceship.name),
          trailing: Text('🚀'),
        );
      },
    );
  }
}
