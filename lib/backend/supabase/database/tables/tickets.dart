import '../database.dart';

class TicketsTable extends SupabaseTable<TicketsRow> {
  @override
  String get tableName => 'tickets';

  @override
  TicketsRow createRow(Map<String, dynamic> data) => TicketsRow(data);
}

class TicketsRow extends SupabaseDataRow {
  TicketsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TicketsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get standardCount => getField<int>('standard_count');
  set standardCount(int? value) => setField<int>('standard_count', value);

  int? get expressCount => getField<int>('express_count');
  set expressCount(int? value) => setField<int>('express_count', value);

  int? get vipCount => getField<int>('vip_count');
  set vipCount(int? value) => setField<int>('vip_count', value);

  int? get standardPrice => getField<int>('standard_price');
  set standardPrice(int? value) => setField<int>('standard_price', value);

  int? get expressPrice => getField<int>('express_price');
  set expressPrice(int? value) => setField<int>('express_price', value);

  int? get vipPrice => getField<int>('vip_price');
  set vipPrice(int? value) => setField<int>('vip_price', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
