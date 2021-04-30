import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'spaceships.req.gql.dart';
import 'spaceships.data.gql.dart';
import 'spaceships.var.gql.dart';

void main() async {
  await DotEnv.load();
  final client = Client(
    link: HttpLink("https://graphql.fauna.com/graphql", defaultHeaders: {
      'Authorization': 'Bearer ${DotEnv.env["FAUNA_KEY"]}',
    }),
  );
  runApp(App(client));
}

class App extends StatelessWidget {
  final Client _client;
  App(this._client);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Spaceships',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(_client),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final Client _client;

  HomeScreen(this._client);

  @override
  Widget build(BuildContext context) {
    return Operation<GGetSpaceshipsData, GGetSpaceshipsVars>(
      client: _client,
      operationRequest: GGetSpaceshipsReq(),
      builder: (context, response, error) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Flutter Space Fleet"),
          ),
          body: response.loading
              ? Text('Loading...')
              : SpaceshipList(response.data.spaceships),
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
          title: Text(spaceship.name, style: TextStyle(fontSize: 20)),
          trailing: Text('🚀', style: TextStyle(fontSize: 24)),
        );
      },
    );
  }
}
