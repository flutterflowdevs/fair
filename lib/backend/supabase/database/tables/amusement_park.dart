import '../database.dart';

class AmusementParkTable extends SupabaseTable<AmusementParkRow> {
  @override
  String get tableName => 'amusement_park';

  @override
  AmusementParkRow createRow(Map<String, dynamic> data) =>
      AmusementParkRow(data);
}

class AmusementParkRow extends SupabaseDataRow {
  AmusementParkRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AmusementParkTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get appBarName => getField<String>('app_bar_name');
  set appBarName(String? value) => setField<String>('app_bar_name', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get shortTitle => getField<String>('short_title');
  set shortTitle(String? value) => setField<String>('short_title', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  String? get waitTime => getField<String>('wait_time');
  set waitTime(String? value) => setField<String>('wait_time', value);

  String? get time => getField<String>('time');
  set time(String? value) => setField<String>('time', value);

  String? get mapLink => getField<String>('map_link');
  set mapLink(String? value) => setField<String>('map_link', value);

  String? get shortDetails => getField<String>('short_details');
  set shortDetails(String? value) => setField<String>('short_details', value);

  String? get details => getField<String>('details');
  set details(String? value) => setField<String>('details', value);

  List<String> get types => getListField<String>('types');
  set types(List<String>? value) => setListField<String>('types', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  bool? get isFavourite => getField<bool>('is_favourite');
  set isFavourite(bool? value) => setField<bool>('is_favourite', value);
}
