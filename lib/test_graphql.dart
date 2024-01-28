import 'package:test_graphql/services/gql_country_service.dart';
import 'package:test_graphql/services/graphql_service.dart';

Future<String?> _getToken() async {
  final aT = "";
  return 'Bearer $aT';
}

void fetchCountries() async {
  GraphQLService.init(getToken: _getToken);

  final res = await GqlCountryService.countryFindMany();
  print(res);
}
