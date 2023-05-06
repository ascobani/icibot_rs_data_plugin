// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rs_version_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRSVersionModelCollection on Isar {
  IsarCollection<RSVersionModel> get rSVersionModels => this.collection();
}

const RSVersionModelSchema = CollectionSchema(
  name: r'RSVersionModel',
  id: -1482417130803253827,
  properties: {
    r'appHotelId': PropertySchema(
      id: 0,
      name: r'appHotelId',
      type: IsarType.long,
    ),
    r'getDate': PropertySchema(
      id: 1,
      name: r'getDate',
      type: IsarType.dateTime,
    ),
    r'version': PropertySchema(
      id: 2,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _rSVersionModelEstimateSize,
  serialize: _rSVersionModelSerialize,
  deserialize: _rSVersionModelDeserialize,
  deserializeProp: _rSVersionModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _rSVersionModelGetId,
  getLinks: _rSVersionModelGetLinks,
  attach: _rSVersionModelAttach,
  version: '3.1.0+1',
);

int _rSVersionModelEstimateSize(
  RSVersionModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _rSVersionModelSerialize(
  RSVersionModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.appHotelId);
  writer.writeDateTime(offsets[1], object.getDate);
  writer.writeLong(offsets[2], object.version);
}

RSVersionModel _rSVersionModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RSVersionModel(
    appHotelId: reader.readLongOrNull(offsets[0]),
    getDate: reader.readDateTimeOrNull(offsets[1]),
    version: reader.readLongOrNull(offsets[2]),
  );
  object.id = id;
  return object;
}

P _rSVersionModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _rSVersionModelGetId(RSVersionModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _rSVersionModelGetLinks(RSVersionModel object) {
  return [];
}

void _rSVersionModelAttach(
    IsarCollection<dynamic> col, Id id, RSVersionModel object) {
  object.id = id;
}

extension RSVersionModelQueryWhereSort
    on QueryBuilder<RSVersionModel, RSVersionModel, QWhere> {
  QueryBuilder<RSVersionModel, RSVersionModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RSVersionModelQueryWhere
    on QueryBuilder<RSVersionModel, RSVersionModel, QWhereClause> {
  QueryBuilder<RSVersionModel, RSVersionModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RSVersionModelQueryFilter
    on QueryBuilder<RSVersionModel, RSVersionModel, QFilterCondition> {
  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      appHotelIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'appHotelId',
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      appHotelIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'appHotelId',
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      appHotelIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appHotelId',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      appHotelIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'appHotelId',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      appHotelIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'appHotelId',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      appHotelIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'appHotelId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      getDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'getDate',
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      getDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'getDate',
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      getDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'getDate',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      getDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'getDate',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      getDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'getDate',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      getDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'getDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      versionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'version',
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      versionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'version',
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      versionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      versionGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      versionLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterFilterCondition>
      versionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RSVersionModelQueryObject
    on QueryBuilder<RSVersionModel, RSVersionModel, QFilterCondition> {}

extension RSVersionModelQueryLinks
    on QueryBuilder<RSVersionModel, RSVersionModel, QFilterCondition> {}

extension RSVersionModelQuerySortBy
    on QueryBuilder<RSVersionModel, RSVersionModel, QSortBy> {
  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy>
      sortByAppHotelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appHotelId', Sort.asc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy>
      sortByAppHotelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appHotelId', Sort.desc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy> sortByGetDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getDate', Sort.asc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy>
      sortByGetDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getDate', Sort.desc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy> sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension RSVersionModelQuerySortThenBy
    on QueryBuilder<RSVersionModel, RSVersionModel, QSortThenBy> {
  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy>
      thenByAppHotelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appHotelId', Sort.asc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy>
      thenByAppHotelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appHotelId', Sort.desc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy> thenByGetDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getDate', Sort.asc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy>
      thenByGetDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getDate', Sort.desc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy> thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension RSVersionModelQueryWhereDistinct
    on QueryBuilder<RSVersionModel, RSVersionModel, QDistinct> {
  QueryBuilder<RSVersionModel, RSVersionModel, QDistinct>
      distinctByAppHotelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appHotelId');
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QDistinct> distinctByGetDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'getDate');
    });
  }

  QueryBuilder<RSVersionModel, RSVersionModel, QDistinct> distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension RSVersionModelQueryProperty
    on QueryBuilder<RSVersionModel, RSVersionModel, QQueryProperty> {
  QueryBuilder<RSVersionModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RSVersionModel, int?, QQueryOperations> appHotelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appHotelId');
    });
  }

  QueryBuilder<RSVersionModel, DateTime?, QQueryOperations> getDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'getDate');
    });
  }

  QueryBuilder<RSVersionModel, int?, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
