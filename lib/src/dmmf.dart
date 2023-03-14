// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dmmf.freezed.dart';
part 'dmmf.g.dart';

@freezed
class Document with _$Document {
  const factory Document({
    required Datamodel datamodel,
    required Schema schema,
    required Mappings mappings,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}

@freezed
class Datamodel with _$Datamodel {
  const factory Datamodel({
    required Iterable<Model> models,
    required Iterable<DatamodelEnum> enums,
    required Iterable<Model> types,
  }) = _Datamodel;

  factory Datamodel.fromJson(Map<String, dynamic> json) =>
      _$DatamodelFromJson(json);
}

@freezed
class Model with _$Model {
  const factory Model({
    required String name,
    String? dbName,
    required Iterable<Field> fields,
    required Iterable<Iterable<String>> uniqueFields,
    required Iterable<UniqueIndex> uniqueIndexes,
    String? documentation,
    PrimaryKey? primaryKey,
  }) = _Model;

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}

@freezed
class UniqueIndex with _$UniqueIndex {
  const factory UniqueIndex({
    required String name,
    required Iterable<String> fields,
  }) = _UniqueIndex;

  factory UniqueIndex.fromJson(Map<String, dynamic> json) =>
      _$UniqueIndexFromJson(json);
}

@freezed
class PrimaryKey with _$PrimaryKey {
  const factory PrimaryKey({
    String? name,
    required Iterable<String> fields,
  }) = _PrimaryKey;

  factory PrimaryKey.fromJson(Map<String, dynamic> json) =>
      _$PrimaryKeyFromJson(json);
}

@freezed
class Field with _$Field {
  const factory Field({
    required FieldKind kind,
    required String name,
    required bool isRequired,
    required bool isList,
    required bool isUnique,
    required bool isId,
    required bool isReadOnly,
    bool? isGenerated,
    bool? isUpdatedAt,
    required String type,
    Iterable<String>? dbNames,
    required bool hasDefaultValue,
    @JsonKey(name: 'default') dynamic default_,
    Iterable<String>? relationFromFields,
    Iterable<dynamic>? relationToFields,
    String? relationOnDelete,
    String? relationName,
    String? documentation,
  }) = _Field;

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);
}

@freezed
class DatamodelEnum with _$DatamodelEnum {
  const factory DatamodelEnum({
    required String name,
    required Iterable<EnumValue> values,
    String? dbName,
    String? documentation,
  }) = _DatamodelEnum;

  factory DatamodelEnum.fromJson(Map<String, dynamic> json) =>
      _$DatamodelEnumFromJson(json);
}

@freezed
class EnumValue with _$EnumValue {
  const factory EnumValue({
    required String name,
    String? dbName,
  }) = _EnumValue;

  factory EnumValue.fromJson(Map<String, dynamic> json) =>
      _$EnumValueFromJson(json);
}

@freezed
class Schema with _$Schema {
  const factory Schema({
    String? rootQueryType,
    String? rootMutationType,
    required InputObjectTypes inputObjectTypes,
    required OutputObjectTypes outputObjectTypes,
    required EnumTypes enumTypes,
    required FieldRefTypes fieldRefTypes,
  }) = _Schema;

  factory Schema.fromJson(Map<String, dynamic> json) => _$SchemaFromJson(json);
}

@freezed
class InputObjectTypes with _$InputObjectTypes {
  const factory InputObjectTypes({
    Iterable<InputType>? model,
    required Iterable<InputType> prisma,
  }) = _InputObjectTypes;

  factory InputObjectTypes.fromJson(Map<String, dynamic> json) =>
      _$InputObjectTypesFromJson(json);
}

@freezed
class InputType with _$InputType {
  const factory InputType({
    required String name,
    required Constraints constraints,
    Meta? meta,
    required Iterable<SchemaArg> fields,
    Map<String, SchemaArg>? fieldMap,
  }) = _InputType;

  factory InputType.fromJson(Map<String, dynamic> json) =>
      _$InputTypeFromJson(json);
}

@freezed
class Constraints with _$Constraints {
  const factory Constraints({
    int? maxNumFields,
    int? minNumFields,
    Iterable<String>? fields,
  }) = _Constraints;

  factory Constraints.fromJson(Map<String, dynamic> json) =>
      _$ConstraintsFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    String? source,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class SchemaArg with _$SchemaArg {
  const factory SchemaArg({
    required String name,
    String? comment,
    required bool isNullable,
    required bool isRequired,
    required Iterable<SchemaArgInputType> inputTypes,
    Deprecation? deprecation,
  }) = _SchemaArg;

  factory SchemaArg.fromJson(Map<String, dynamic> json) =>
      _$SchemaArgFromJson(json);
}

@freezed
class Deprecation with _$Deprecation {
  const factory Deprecation({
    required String sinceVersion,
    required String reason,
    String? plannedRemovalVersion,
  }) = _Deprecation;

  factory Deprecation.fromJson(Map<String, dynamic> json) =>
      _$DeprecationFromJson(json);
}

@freezed
class SchemaArgInputType with _$SchemaArgInputType {
  const factory SchemaArgInputType({
    required bool isList,
    required ArgType type,
    required FieldLocation location,
    FieldNamespace? namespace,
  }) = _SchemaArgInputType;

  factory SchemaArgInputType.fromJson(Map<String, dynamic> json) =>
      _$SchemaArgInputTypeFromJson(json);
}

enum FieldNamespace {
  model,
  prisma,
}

enum FieldLocation {
  scalar,
  inputObjectTypes,
  outputObjectTypes,
  enumTypes,
  fieldRefTypes,
}

enum FieldKind {
  scalar,
  object,
  @JsonValue('enum')
  enum_,
  unsupported,
}

@freezed
class ArgType with _$ArgType {
  const factory ArgType.string(String value) = StringArgType;
  const factory ArgType.input(InputType value) = InputTypeArgType;
  const factory ArgType.enum_(SchemaEnum value) = SchemaEnumArgType;

  factory ArgType.fromJson(Map<String, dynamic> json) =>
      _$ArgTypeFromJson(json);
}

@freezed
class SchemaEnum with _$SchemaEnum {
  const factory SchemaEnum({
    required String name,
    required Iterable<String> values,
  }) = _SchemaEnum;

  factory SchemaEnum.fromJson(Map<String, dynamic> json) =>
      _$SchemaEnumFromJson(json);
}

@freezed
class OutputObjectTypes with _$OutputObjectTypes {
  const factory OutputObjectTypes({
    required Iterable<OutputType> model,
    required Iterable<OutputType> prisma,
  }) = _OutputObjectTypes;

  factory OutputObjectTypes.fromJson(Map<String, dynamic> json) =>
      _$OutputObjectTypesFromJson(json);
}

@freezed
class EnumTypes with _$EnumTypes {
  const factory EnumTypes({
    Iterable<SchemaEnum>? model,
    required Iterable<SchemaEnum> prisma,
  }) = _EnumTypes;

  factory EnumTypes.fromJson(Map<String, dynamic> json) =>
      _$EnumTypesFromJson(json);
}

@freezed
class FieldRefTypes with _$FieldRefTypes {
  const factory FieldRefTypes({
    Iterable<FieldRefType>? prisma,
  }) = _FieldRefTypes;

  factory FieldRefTypes.fromJson(Map<String, dynamic> json) =>
      _$FieldRefTypesFromJson(json);
}

@freezed
class FieldRefType with _$FieldRefType {
  const factory FieldRefType({
    required String name,
    required Iterable<TypeRef> allowTypes,
    required Iterable<SchemaArg> fields,
  }) = _FieldRefType;

  factory FieldRefType.fromJson(Map<String, dynamic> json) =>
      _$FieldRefTypeFromJson(json);
}

@freezed
class TypeRef with _$TypeRef {
  const factory TypeRef({
    required bool isList,
    FieldNamespace? namespace,
    required FieldLocation location,
    required TypeRefType type,
  }) = _TypeRef;

  factory TypeRef.fromJson(Map<String, dynamic> json) =>
      _$TypeRefFromJson(json);
}

@freezed
class TypeRefType with _$TypeRefType {
  const factory TypeRefType.string(String value) = StringTypeRefType;
  const factory TypeRefType.enum_(SchemaEnum value) = SchemaEnumTypeRefType;
  const factory TypeRefType.outputObjectTypes(OutputType value) =
      OutputTypeTypeRefType;

  factory TypeRefType.fromJson(Map<String, dynamic> json) =>
      _$TypeRefTypeFromJson(json);
}

@freezed
class OutputType with _$OutputType {
  const factory OutputType({
    required String name,
    required Iterable<SchemaField> fields,
    Map<String, SchemaField>? fieldMap,
  }) = _OutputType;

  factory OutputType.fromJson(Map<String, dynamic> json) =>
      _$OutputTypeFromJson(json);
}

@freezed
class SchemaField with _$SchemaField {
  const factory SchemaField({
    required String name,
    bool? isNullable,
    required TypeRef outputType,
    required Iterable<SchemaArg> args,
    Deprecation? deprecation,
    String? documentation,
  }) = _SchemaField;

  factory SchemaField.fromJson(Map<String, dynamic> json) =>
      _$SchemaFieldFromJson(json);
}

@freezed
class Mappings with _$Mappings {
  const factory Mappings({
    required Iterable<ModelMapping> modelOperations,
    required OtherOperationMappings otherOperations,
  }) = _Mappings;

  factory Mappings.fromJson(Map<String, dynamic> json) =>
      _$MappingsFromJson(json);
}

@freezed
class OtherOperationMappings with _$OtherOperationMappings {
  const factory OtherOperationMappings({
    required Iterable<String> read,
    required Iterable<String> write,
  }) = _OtherOperationMappings;

  factory OtherOperationMappings.fromJson(Map<String, dynamic> json) =>
      _$OtherOperationMappingsFromJson(json);
}

@freezed
class ModelMapping with _$ModelMapping {
  const factory ModelMapping({
    required String model,
    required String plural,
    String? findUnique,
    String? findUniqueOrThrow,
    String? findFirst,
    String? findFirstOrThrow,
    String? findMany,
    String? create,
    String? createMany,
    String? update,
    String? updateMany,
    String? upsert,
    String? delete,
    String? deleteMany,
    String? aggregate,
    String? groupBy,
    String? count,
    String? findRaw,
    String? aggregateRaw,
  }) = _ModelMapping;

  factory ModelMapping.fromJson(Map<String, dynamic> json) =>
      _$ModelMappingFromJson(json);
}
