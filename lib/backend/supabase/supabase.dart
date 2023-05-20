import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://mzogaauipbtwkzdajtlz.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im16b2dhYXVpcGJ0d2t6ZGFqdGx6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQ1NjI2MTIsImV4cCI6MjAwMDEzODYxMn0.D4edHcC-PgcBujfIjICliLl3j54D8UIdHm1pY6jGOpQ';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
