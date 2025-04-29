// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionItem {

 int get id; String get title; DateTime get completedTime; double get amount;@TxnCategoryConverter() TransactionCategory get category; String get url;
/// Create a copy of TransactionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionItemCopyWith<TransactionItem> get copyWith => _$TransactionItemCopyWithImpl<TransactionItem>(this as TransactionItem, _$identity);

  /// Serializes this TransactionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.completedTime, completedTime) || other.completedTime == completedTime)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.category, category) || other.category == category)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,completedTime,amount,category,url);

@override
String toString() {
  return 'TransactionItem(id: $id, title: $title, completedTime: $completedTime, amount: $amount, category: $category, url: $url)';
}


}

/// @nodoc
abstract mixin class $TransactionItemCopyWith<$Res>  {
  factory $TransactionItemCopyWith(TransactionItem value, $Res Function(TransactionItem) _then) = _$TransactionItemCopyWithImpl;
@useResult
$Res call({
 int id, String title, DateTime completedTime, double amount,@TxnCategoryConverter() TransactionCategory category, String url
});




}
/// @nodoc
class _$TransactionItemCopyWithImpl<$Res>
    implements $TransactionItemCopyWith<$Res> {
  _$TransactionItemCopyWithImpl(this._self, this._then);

  final TransactionItem _self;
  final $Res Function(TransactionItem) _then;

/// Create a copy of TransactionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? completedTime = null,Object? amount = null,Object? category = null,Object? url = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,completedTime: null == completedTime ? _self.completedTime : completedTime // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TransactionItem implements TransactionItem {
  const _TransactionItem({required this.id, required this.title, required this.completedTime, required this.amount, @TxnCategoryConverter() required this.category, required this.url});
  factory _TransactionItem.fromJson(Map<String, dynamic> json) => _$TransactionItemFromJson(json);

@override final  int id;
@override final  String title;
@override final  DateTime completedTime;
@override final  double amount;
@override@TxnCategoryConverter() final  TransactionCategory category;
@override final  String url;

/// Create a copy of TransactionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionItemCopyWith<_TransactionItem> get copyWith => __$TransactionItemCopyWithImpl<_TransactionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.completedTime, completedTime) || other.completedTime == completedTime)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.category, category) || other.category == category)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,completedTime,amount,category,url);

@override
String toString() {
  return 'TransactionItem(id: $id, title: $title, completedTime: $completedTime, amount: $amount, category: $category, url: $url)';
}


}

/// @nodoc
abstract mixin class _$TransactionItemCopyWith<$Res> implements $TransactionItemCopyWith<$Res> {
  factory _$TransactionItemCopyWith(_TransactionItem value, $Res Function(_TransactionItem) _then) = __$TransactionItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, DateTime completedTime, double amount,@TxnCategoryConverter() TransactionCategory category, String url
});




}
/// @nodoc
class __$TransactionItemCopyWithImpl<$Res>
    implements _$TransactionItemCopyWith<$Res> {
  __$TransactionItemCopyWithImpl(this._self, this._then);

  final _TransactionItem _self;
  final $Res Function(_TransactionItem) _then;

/// Create a copy of TransactionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? completedTime = null,Object? amount = null,Object? category = null,Object? url = null,}) {
  return _then(_TransactionItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,completedTime: null == completedTime ? _self.completedTime : completedTime // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
