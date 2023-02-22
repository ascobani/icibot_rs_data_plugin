// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model2.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetModel2Collection on Isar {
  IsarCollection<Model2> get model2s => this.collection();
}

const Model2Schema = CollectionSchema(
  name: r'Model2',
  id: 4170746141922391064,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _model2EstimateSize,
  serialize: _model2Serialize,
  deserialize: _model2Deserialize,
  deserializeProp: _model2DeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'model1': LinkSchema(
      id: 6260034034561241219,
      name: r'model1',
      target: r'Model1',
      single: false,
    ),
    r'model3': LinkSchema(
      id: -5358737032245913378,
      name: r'model3',
      target: r'Model3',
      single: false,
      linkName: r'model2',
    )
  },
  embeddedSchemas: {},
  getId: _model2GetId,
  getLinks: _model2GetLinks,
  attach: _model2Attach,
  version: '3.0.5',
);

int _model2EstimateSize(
  Model2 object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _model2Serialize(
  Model2 object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
}

Model2 _model2Deserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Model2();
  object.id = id;
  object.name = reader.readString(offsets[0]);
  return object;
}

P _model2DeserializeProp<P>(
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

Id _model2GetId(Model2 object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _model2GetLinks(Model2 object) {
  return [object.model1, object.model3];
}

void _model2Attach(IsarCollection<dynamic> col, Id id, Model2 object) {
  object.id = id;
  object.model1.attach(col, col.isar.collection<Model1>(), r'model1', id);
  object.model3.attach(col, col.isar.collection<Model3>(), r'model3', id);
}

extension Model2QueryWhereSort on QueryBuilder<Model2, Model2, QWhere> {
  QueryBuilder<Model2, Model2, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension Model2QueryWhere on QueryBuilder<Model2, Model2, QWhereClause> {
  QueryBuilder<Model2, Model2, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Model2, Model2, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Model2, Model2, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Model2, Model2, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Model2, Model2, QAfterWhereClause> idBetween(
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

extension Model2QueryFilter on QueryBuilder<Model2, Model2, QFilterCondition> {
  QueryBuilder<Model2, Model2, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Model2, Model2, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Model2, Model2, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Model2, Model2, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Model2, Model2, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Model2, Model2, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Model2, Model2, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Model2, Model2, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Model2, Model2, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Model2, Model2, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Model2, Model2, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension Model2QueryObject on QueryBuilder<Model2, Model2, QFilterCondition> {}

extension Model2QueryLinks on QueryBuilder<Model2, Model2, QFilterCondition> {
  QueryBuilder<Model2, Model2, QAfterFilterCondition> model1(
      FilterQuery<Model1> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'model1');
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model1LengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model1', length, true, length, true);
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model1', 0, true, 0, true);
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model1', 0, false, 999999, true);
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model1LengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model1', 0, true, length, include);
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model1LengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model1', length, include, 999999, true);
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model1LengthBetween(
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

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model3(
      FilterQuery<Model3> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'model3');
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model3LengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model3', length, true, length, true);
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model3IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model3', 0, true, 0, true);
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model3IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model3', 0, false, 999999, true);
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model3LengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model3', 0, true, length, include);
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model3LengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'model3', length, include, 999999, true);
    });
  }

  QueryBuilder<Model2, Model2, QAfterFilterCondition> model3LengthBetween(
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

extension Model2QuerySortBy on QueryBuilder<Model2, Model2, QSortBy> {
  QueryBuilder<Model2, Model2, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Model2, Model2, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension Model2QuerySortThenBy on QueryBuilder<Model2, Model2, QSortThenBy> {
  QueryBuilder<Model2, Model2, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Model2, Model2, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Model2, Model2, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Model2, Model2, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension Model2QueryWhereDistinct on QueryBuilder<Model2, Model2, QDistinct> {
  QueryBuilder<Model2, Model2, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension Model2QueryProperty on QueryBuilder<Model2, Model2, QQueryProperty> {
  QueryBuilder<Model2, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Model2, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
