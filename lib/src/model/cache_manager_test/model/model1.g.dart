// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model1.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetModel1Collection on Isar {
  IsarCollection<Model1> get model1s => this.collection();
}

const Model1Schema = CollectionSchema(
  name: r'Model1',
  id: -7311835128273790646,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _model1EstimateSize,
  serialize: _model1Serialize,
  deserialize: _model1Deserialize,
  deserializeProp: _model1DeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'model2': LinkSchema(
      id: -2812119843262575958,
      name: r'model2',
      target: r'Model2',
      single: false,
      linkName: r'model1',
    ),
    r'model3': LinkSchema(
      id: 2008612582633281007,
      name: r'model3',
      target: r'Model3',
      single: false,
      linkName: r'model1',
    )
  },
  embeddedSchemas: {},
  getId: _model1GetId,
  getLinks: _model1GetLinks,
  attach: _model1Attach,
  version: '3.0.5',
);

int _model1EstimateSize(
  Model1 object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _model1Serialize(
  Model1 object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
}

Model1 _model1Deserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Model1();
  object.id = id;
  object.name = reader.readString(offsets[0]);
  return object;
}

P _model1DeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _model1GetId(Model1 object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _model1GetLinks(Model1 object) {
  return [object.model2, object.model3];
}

void _model1Attach(IsarCollection<dynamic> col, Id id, Model1 object) {
  object.id = id;
  object.model2.attach(col, col.isar.collection<Model2>(), r'model2', id);
  object.model3.attach(col, col.isar.collection<Model3>(), r'model3', id);
}

extension Model1QueryWhereSort on QueryBuilder<Model1, Model1, QWhere> {
  QueryBuilder<Model1, Model1, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension Model1QueryWhere on QueryBuilder<Model1, Model1, QWhereClause> {
  QueryBuilder<Model1, Model1, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Model1, Model1, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Model1, Model1, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Model1, Model1, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Model1, Model1, QAfterWhereClause> idBetween(
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

extension Model1QueryFilter on QueryBuilder<Model1, Model1, QFilterCondition> {
  QueryBuilder<Model1, Model1, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Model1, Model1, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Model1, Model1, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Model1, Model1, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension Model1QueryObject on QueryBuilder<Model1, Model1, QFilterCondition> {}

extension Model1QueryLinks on QueryBuilder<Model1, Model1, QFilterCondition> {
  QueryBuilder<Model1, Model1, QAfterFilterCondition> model2(
      FilterQuery<Model2> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'model2');
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model2LengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model2', length, true, length, true);
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model2', 0, true, 0, true);
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model2', 0, false, 999999, true);
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model2LengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model2', 0, true, length, include);
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model2LengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model2', length, include, 999999, true);
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model2LengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'model2', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model3(
      FilterQuery<Model3> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'model3');
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model3LengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model3', length, true, length, true);
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model3IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model3', 0, true, 0, true);
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model3IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model3', 0, false, 999999, true);
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model3LengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model3', 0, true, length, include);
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model3LengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model3', length, include, 999999, true);
    });
  }

  QueryBuilder<Model1, Model1, QAfterFilterCondition> model3LengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'model3', lower, includeLower, upper, includeUpper);
    });
  }
}

extension Model1QuerySortBy on QueryBuilder<Model1, Model1, QSortBy> {
  QueryBuilder<Model1, Model1, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Model1, Model1, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension Model1QuerySortThenBy on QueryBuilder<Model1, Model1, QSortThenBy> {
  QueryBuilder<Model1, Model1, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Model1, Model1, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Model1, Model1, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Model1, Model1, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension Model1QueryWhereDistinct on QueryBuilder<Model1, Model1, QDistinct> {
  QueryBuilder<Model1, Model1, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension Model1QueryProperty on QueryBuilder<Model1, Model1, QQueryProperty> {
  QueryBuilder<Model1, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Model1, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
