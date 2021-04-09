import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
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
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(_client),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final Client _client;

  HomeScreen(this._client);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GGetSpaceshipsReq _getSpaceshipsReq;

  @override
  void initState() {
    super.initState();
    _getSpaceshipsReq =
        GGetSpaceshipsReq((b) => b..fetchPolicy = FetchPolicy.CacheAndNetwork);
  }

  _openCreateSpaceshipSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return CreateSpaceshipSheet(
          client: widget._client,
          onSpaceshipCreated: _handleSpaceshipCreated,
        );
      },
    );
  }

  void _handleSpaceshipCreated() {
    widget._client.requestController.add(_getSpaceshipsReq);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Spaceship created!'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Operation<GGetSpaceshipsData, GGetSpaceshipsVars>(
      client: widget._client,
      operationRequest: _getSpaceshipsReq,
      builder: (context, response, error) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Flutter Space Fleet"),
          ),
          body: response.data != null
              ? SpaceshipList(response.data.spaceships)
              : Text('Loading...'),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _openCreateSpaceshipSheet(context),
            tooltip: 'Add a Spaceship',
            child: Icon(Icons.add),
          ),
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

class CreateSpaceshipSheet extends StatefulWidget {
  final Client client;
  final Function onSpaceshipCreated;
  CreateSpaceshipSheet({this.client, this.onSpaceshipCreated});

  @override
  _CreateSpaceshipSheetState createState() => _CreateSpaceshipSheetState();
}

class _CreateSpaceshipSheetState extends State<CreateSpaceshipSheet> {
  final _nameController = TextEditingController();

  void _createSpaceship() {
    final name = _nameController.value.text;
    final request = GCreateSpaceshipReq((b) => b..vars.data.name = name);
    widget.client
        .request(request)
        .first
        .then(
          (_) => widget.onSpaceshipCreated(),
        )
        .whenComplete(() => Navigator.of(context).pop());
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        bottom: 16,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Spaceship Name',
              ),
              controller: _nameController,
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () => _createSpaceship(),
          )
        ],
      ),
    );
  }
}
