// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model3.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetModel3Collection on Isar {
  IsarCollection<Model3> get model3s => this.collection();
}

const Model3Schema = CollectionSchema(
  name: r'Model3',
  id: 4610676136881468358,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _model3EstimateSize,
  serialize: _model3Serialize,
  deserialize: _model3Deserialize,
  deserializeProp: _model3DeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'model1': LinkSchema(
      id: 7467609117640103399,
      name: r'model1',
      target: r'Model1',
      single: false,
    ),
    r'model2': LinkSchema(
      id: 2971748460427225531,
      name: r'model2',
      target: r'Model2',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _model3GetId,
  getLinks: _model3GetLinks,
  attach: _model3Attach,
  version: '3.0.5',
);

int _model3EstimateSize(
  Model3 object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _model3Serialize(
  Model3 object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
}

Model3 _model3Deserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Model3();
  object.id = id;
  object.name = reader.readString(offsets[0]);
  return object;
}

P _model3DeserializeProp<P>(
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

Id _model3GetId(Model3 object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _model3GetLinks(Model3 object) {
  return [object.model1, object.model2];
}

void _model3Attach(IsarCollection<dynamic> col, Id id, Model3 object) {
  object.id = id;
  object.model1.attach(col, col.isar.collection<Model1>(), r'model1', id);
  object.model2.attach(col, col.isar.collection<Model2>(), r'model2', id);
}

extension Model3QueryWhereSort on QueryBuilder<Model3, Model3, QWhere> {
  QueryBuilder<Model3, Model3, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension Model3QueryWhere on QueryBuilder<Model3, Model3, QWhereClause> {
  QueryBuilder<Model3, Model3, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Model3, Model3, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Model3, Model3, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Model3, Model3, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Model3, Model3, QAfterWhereClause> idBetween(
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

extension Model3QueryFilter on QueryBuilder<Model3, Model3, QFilterCondition> {
  QueryBuilder<Model3, Model3, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Model3, Model3, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Model3, Model3, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Model3, Model3, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Model3, Model3, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Model3, Model3, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Model3, Model3, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Model3, Model3, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Model3, Model3, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Model3, Model3, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Model3, Model3, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension Model3QueryObject on QueryBuilder<Model3, Model3, QFilterCondition> {}

extension Model3QueryLinks on QueryBuilder<Model3, Model3, QFilterCondition> {
  QueryBuilder<Model3, Model3, QAfterFilterCondition> model1(
      FilterQuery<Model1> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'model1');
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model1LengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model1', length, true, length, true);
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model1', 0, true, 0, true);
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model1', 0, false, 999999, true);
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model1LengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model1', 0, true, length, include);
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model1LengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model1', length, include, 999999, true);
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model1LengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'model1', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model2(
      FilterQuery<Model2> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'model2');
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model2LengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model2', length, true, length, true);
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model2', 0, true, 0, true);
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model2', 0, false, 999999, true);
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model2LengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model2', 0, true, length, include);
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model2LengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model2', length, include, 999999, true);
    });
  }

  QueryBuilder<Model3, Model3, QAfterFilterCondition> model2LengthBetween(
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
}

extension Model3QuerySortBy on QueryBuilder<Model3, Model3, QSortBy> {
  QueryBuilder<Model3, Model3, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Model3, Model3, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension Model3QuerySortThenBy on QueryBuilder<Model3, Model3, QSortThenBy> {
  QueryBuilder<Model3, Model3, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Model3, Model3, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Model3, Model3, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Model3, Model3, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension Model3QueryWhereDistinct on QueryBuilder<Model3, Model3, QDistinct> {
  QueryBuilder<Model3, Model3, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension Model3QueryProperty on QueryBuilder<Model3, Model3, QQueryProperty> {
  QueryBuilder<Model3, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Model3, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
