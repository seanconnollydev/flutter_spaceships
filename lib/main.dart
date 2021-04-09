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
  final _getSpaceshipsRequest = GGetSpaceshipsReq();

  MyHomePage(this._client);

  _openCreateSpaceshipSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return CreateSpaceshipSheet(
          client: _client,
          onSpaceshipCreated: _handleSpaceshipCreated,
        );
      },
    );
  }

  void _handleSpaceshipCreated() {
    print('>>> _handleSpaceshipCreated');
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<
        OperationResponse<GGetSpaceshipsData, GGetSpaceshipsVars>>(
      stream: _client.request(_getSpaceshipsRequest),
      builder: (context, snapshot) {
        print('>>> build()');
        if (snapshot.data?.graphqlErrors?.isNotEmpty == true) {
          snapshot.data.graphqlErrors.forEach((gqlError) {
            print('>>> ${gqlError.message}');
          });
        }
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
            onPressed: () => _openCreateSpaceshipSheet(context),
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
          (_) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Spaceship created!'),
              duration: const Duration(seconds: 1),
            ),
          ),
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
        // bottom: MediaQuery.of(context).viewInsets.bottom + 16,
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
