import 'package:gql/ast.dart';

class Query$CountryFindMany {
  Query$CountryFindMany({
    this.countries,
    this.$__typename = 'Query',
  });

  factory Query$CountryFindMany.fromJson(Map<String, dynamic> json) {
    final l$countries = json['countries'];
    final l$$__typename = json['__typename'];
    return Query$CountryFindMany(
      countries: (l$countries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$CountryFindMany$countries.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$CountryFindMany$countries?>? countries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countries = countries;
    _resultData['countries'] = l$countries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countries = countries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countries == null ? null : Object.hashAll(l$countries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CountryFindMany) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (l$countries != null && lOther$countries != null) {
      if (l$countries.length != lOther$countries.length) {
        return false;
      }
      for (int i = 0; i < l$countries.length; i++) {
        final l$countries$entry = l$countries[i];
        final lOther$countries$entry = lOther$countries[i];
        if (l$countries$entry != lOther$countries$entry) {
          return false;
        }
      }
    } else if (l$countries != lOther$countries) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CountryFindMany on Query$CountryFindMany {
  CopyWith$Query$CountryFindMany<Query$CountryFindMany> get copyWith =>
      CopyWith$Query$CountryFindMany(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CountryFindMany<TRes> {
  factory CopyWith$Query$CountryFindMany(
    Query$CountryFindMany instance,
    TRes Function(Query$CountryFindMany) then,
  ) = _CopyWithImpl$Query$CountryFindMany;

  factory CopyWith$Query$CountryFindMany.stub(TRes res) =
      _CopyWithStubImpl$Query$CountryFindMany;

  TRes call({
    List<Query$CountryFindMany$countries?>? countries,
    String? $__typename,
  });
  TRes countries(
      Iterable<Query$CountryFindMany$countries?>? Function(
              Iterable<
                  CopyWith$Query$CountryFindMany$countries<
                      Query$CountryFindMany$countries>?>?)
          _fn);
}

class _CopyWithImpl$Query$CountryFindMany<TRes>
    implements CopyWith$Query$CountryFindMany<TRes> {
  _CopyWithImpl$Query$CountryFindMany(
    this._instance,
    this._then,
  );

  final Query$CountryFindMany _instance;

  final TRes Function(Query$CountryFindMany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CountryFindMany(
        countries: countries == _undefined
            ? _instance.countries
            : (countries as List<Query$CountryFindMany$countries?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes countries(
          Iterable<Query$CountryFindMany$countries?>? Function(
                  Iterable<
                      CopyWith$Query$CountryFindMany$countries<
                          Query$CountryFindMany$countries>?>?)
              _fn) =>
      call(
          countries: _fn(_instance.countries?.map((e) => e == null
              ? null
              : CopyWith$Query$CountryFindMany$countries(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$CountryFindMany<TRes>
    implements CopyWith$Query$CountryFindMany<TRes> {
  _CopyWithStubImpl$Query$CountryFindMany(this._res);

  TRes _res;

  call({
    List<Query$CountryFindMany$countries?>? countries,
    String? $__typename,
  }) =>
      _res;

  countries(_fn) => _res;
}

const documentNodeQueryCountryFindMany = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CountryFindMany'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'countries'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'capital'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currency'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$CountryFindMany$countries {
  Query$CountryFindMany$countries({
    this.code,
    this.name,
    this.capital,
    this.currency,
    this.$__typename = 'Country',
  });

  factory Query$CountryFindMany$countries.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$name = json['name'];
    final l$capital = json['capital'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Query$CountryFindMany$countries(
      code: (l$code as String?),
      name: (l$name as String?),
      capital: (l$capital as String?),
      currency: (l$currency as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? code;

  final String? name;

  final String? capital;

  final String? currency;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$capital = capital;
    _resultData['capital'] = l$capital;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$name = name;
    final l$capital = capital;
    final l$currency = currency;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$name,
      l$capital,
      l$currency,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CountryFindMany$countries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$capital = capital;
    final lOther$capital = other.capital;
    if (l$capital != lOther$capital) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CountryFindMany$countries
    on Query$CountryFindMany$countries {
  CopyWith$Query$CountryFindMany$countries<Query$CountryFindMany$countries>
      get copyWith => CopyWith$Query$CountryFindMany$countries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CountryFindMany$countries<TRes> {
  factory CopyWith$Query$CountryFindMany$countries(
    Query$CountryFindMany$countries instance,
    TRes Function(Query$CountryFindMany$countries) then,
  ) = _CopyWithImpl$Query$CountryFindMany$countries;

  factory CopyWith$Query$CountryFindMany$countries.stub(TRes res) =
      _CopyWithStubImpl$Query$CountryFindMany$countries;

  TRes call({
    String? code,
    String? name,
    String? capital,
    String? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CountryFindMany$countries<TRes>
    implements CopyWith$Query$CountryFindMany$countries<TRes> {
  _CopyWithImpl$Query$CountryFindMany$countries(
    this._instance,
    this._then,
  );

  final Query$CountryFindMany$countries _instance;

  final TRes Function(Query$CountryFindMany$countries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? name = _undefined,
    Object? capital = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CountryFindMany$countries(
        code: code == _undefined ? _instance.code : (code as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        capital:
            capital == _undefined ? _instance.capital : (capital as String?),
        currency:
            currency == _undefined ? _instance.currency : (currency as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CountryFindMany$countries<TRes>
    implements CopyWith$Query$CountryFindMany$countries<TRes> {
  _CopyWithStubImpl$Query$CountryFindMany$countries(this._res);

  TRes _res;

  call({
    String? code,
    String? name,
    String? capital,
    String? currency,
    String? $__typename,
  }) =>
      _res;
}
