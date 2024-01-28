import 'dart:async';

import 'package:graphql/client.dart';

class GraphQLService {
  static late AuthLink authLink;

  static late HttpLink httpLink;

  static late Link link;

  static late GraphQLClient client;

  static void init({required FutureOr<String?> Function() getToken}) {
    authLink = AuthLink(getToken: getToken);

    httpLink = HttpLink(
      "https://countries.trevorblades.com/graphql",
      defaultHeaders: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Apollo-Require-Preflight': 'true'
      },
    );

    link = Link.from([authLink, httpLink]);

    client = GraphQLClient(
      link: link,
      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.networkOnly,
        ),
      ),
    );
  }
}
