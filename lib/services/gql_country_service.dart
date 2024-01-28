import 'package:graphql/client.dart';
import 'package:test_graphql/operations/country_find_many.graphql.dart';
import 'package:test_graphql/services/graphql_service.dart';

class GqlCountryService {
  static Future<QueryResult<Query$CountryFindMany>> countryFindMany() async {
    return await GraphQLService.client.query(QueryOptions(
      document: documentNodeQueryCountryFindMany,
      parserFn: (data) => Query$CountryFindMany.fromJson(data),
    ));
  }
}
