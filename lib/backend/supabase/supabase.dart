import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://hnexafstehowaxwxdhcq.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhuZXhhZnN0ZWhvd2F4d3hkaGNxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQzMTcwMzksImV4cCI6MTk5OTg5MzAzOX0.Ho2Kq2z-w1_IqCiKgPkwqnSzhoxOZ8AK2KLGAQ_vBRA';

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
