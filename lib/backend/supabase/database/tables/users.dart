import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get emailId => getField<String>('email_id');
  set emailId(String? value) => setField<String>('email_id', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  int? get phoneNumber => getField<int>('phone_number');
  set phoneNumber(int? value) => setField<int>('phone_number', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  List<int> get favouriteIds => getListField<int>('favourite_ids');
  set favouriteIds(List<int>? value) =>
      setListField<int>('favourite_ids', value);
}
