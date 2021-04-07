import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

Client createClient() {
  return Client(
    link: HttpLink("https://graphql.fauna.com/graphql", defaultHeaders: {
      'Authorization': 'Bearer ${DotEnv.env["FAUNA_KEY"]}',
    }),
  );
}
