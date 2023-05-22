import '../database.dart';

class ProductTable extends SupabaseTable<ProductRow> {
  @override
  String get tableName => 'Product';

  @override
  ProductRow createRow(Map<String, dynamic> data) => ProductRow(data);
}

class ProductRow extends SupabaseDataRow {
  ProductRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get productCategory => getField<String>('product_category');
  set productCategory(String? value) =>
      setField<String>('product_category', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get weight => getField<double>('weight');
  set weight(double? value) => setField<double>('weight', value);

  List<String> get productTags => getListField<String>('product_tags');
  set productTags(List<String>? value) =>
      setListField<String>('product_tags', value);

  List<String> get productImages => getListField<String>('product_images');
  set productImages(List<String>? value) =>
      setListField<String>('product_images', value);

  String? get contributionType => getField<String>('contribution_type');
  set contributionType(String? value) =>
      setField<String>('contribution_type', value);

  String? get productLocation => getField<String>('product_location');
  set productLocation(String? value) =>
      setField<String>('product_location', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get verified => getField<bool>('verified');
  set verified(bool? value) => setField<bool>('verified', value);

  String? get visibility => getField<String>('visibility');
  set visibility(String? value) => setField<String>('visibility', value);

  List<String> get selectiveRecycler =>
      getListField<String>('selective_recycler');
  set selectiveRecycler(List<String>? value) =>
      setListField<String>('selective_recycler', value);

  double? get productPrice => getField<double>('product_price');
  set productPrice(double? value) => setField<double>('product_price', value);
}
