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
    link: HttpLink(
      "https://graphql.fauna.com/graphql",
      defaultHeaders: {
        'Authorization': 'Bearer ${DotEnv.env["FAUNA_KEY"]}',
      },
    ),
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

  GGetSpaceshipsReq get _request =>
      GGetSpaceshipsReq((b) => b..fetchPolicy = FetchPolicy.CacheAndNetwork);

  @override
  Widget build(BuildContext context) {
    return Operation<GGetSpaceshipsData, GGetSpaceshipsVars>(
      client: _client,
      operationRequest: _request,
      builder: (context, response, error) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Flutter Space Fleet"),
          ),
          body: response.loading
              ? Text('Loading...')
              : SpaceshipList(_client, response.data.spaceships),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddSpaceshipScreen(
                    client: _client,
                  ),
                ),
              ).then((_) {
                _client.requestController.add(_request);
              });
            },
          ),
        );
      },
    );
  }
}

class SpaceshipList extends StatelessWidget {
  final Client _client;
  final GGetSpaceshipsData_spaceships _spaceships;
  SpaceshipList(this._client, this._spaceships);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _spaceships.data.length,
      itemBuilder: (context, i) {
        final spaceship = _spaceships.data[i];
        return ListTile(
          title: Text(spaceship.name, style: TextStyle(fontSize: 20)),
          trailing: Text('🚀', style: TextStyle(fontSize: 24)),
          onTap: () {
            showDialog(
              context: context,
              builder: (ctx) =>
                  EditSpaceshipDialog(client: _client, id: spaceship.G_id),
            );
          },
        );
      },
    );
  }
}

class AddSpaceshipScreen extends StatefulWidget {
  final Client client;

  AddSpaceshipScreen({this.client});

  @override
  _AddSpaceshipScreenState createState() => _AddSpaceshipScreenState();
}

class _AddSpaceshipScreenState extends State<AddSpaceshipScreen> {
  final _nameController = TextEditingController();

  _save(BuildContext context) async {
    final mutation =
        GCreateSpaceshipReq((b) => b..vars.data.name = _nameController.text);

    await widget.client.request(mutation).first;
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Spaceship'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () => _save(context),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Add a new Spaceship to your fleet.'),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                icon: Icon(Icons.badge),
                helperText: 'Enter a name for the ship',
                labelText: 'Name',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditSpaceshipDialog extends StatefulWidget {
  final Client client;
  final String id;

  EditSpaceshipDialog({this.client, this.id});

  @override
  _EditSpaceshipDialogState createState() => _EditSpaceshipDialogState();
}

class _EditSpaceshipDialogState extends State<EditSpaceshipDialog> {
  final _nameController = TextEditingController();

  _save(BuildContext context) async {
    final mutation = GUpdateSpaceshipReq(
      (b) => b
        ..vars.id = widget.id
        ..vars.data.name = _nameController.text,
    );
    await widget.client.request(mutation).first;
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: TextFormField(
        controller: _nameController,
        decoration: const InputDecoration(
          icon: Icon(Icons.badge),
          helperText: 'Enter a new name for the ship',
          labelText: 'Name',
        ),
      ),
      actions: [
        TextButton(
          child: Text('Save'),
          onPressed: () => _save(context),
        )
      ],
    );
  }
}
