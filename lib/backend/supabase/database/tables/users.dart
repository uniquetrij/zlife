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

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get firstName => getField<String>('first_name')!;
  set firstName(String value) => setField<String>('first_name', value);

  String get lastName => getField<String>('last_name')!;
  set lastName(String value) => setField<String>('last_name', value);

  String get role => getField<String>('role')!;
  set role(String value) => setField<String>('role', value);

  String get emailId => getField<String>('email_id')!;
  set emailId(String value) => setField<String>('email_id', value);

  String get companyName => getField<String>('company_name')!;
  set companyName(String value) => setField<String>('company_name', value);

  String get companyAddress => getField<String>('company_address')!;
  set companyAddress(String value) =>
      setField<String>('company_address', value);

  String get contactNumber => getField<String>('contact_number')!;
  set contactNumber(String value) => setField<String>('contact_number', value);

  String get registrationNumber => getField<String>('registration_number')!;
  set registrationNumber(String value) =>
      setField<String>('registration_number', value);

  String? get referralCode => getField<String>('referral_code');
  set referralCode(String? value) => setField<String>('referral_code', value);

  String? get displayImage => getField<String>('display_image');
  set displayImage(String? value) => setField<String>('display_image', value);

  bool? get isIndividualAccount => getField<bool>('isIndividualAccount');
  set isIndividualAccount(bool? value) =>
      setField<bool>('isIndividualAccount', value);
}
