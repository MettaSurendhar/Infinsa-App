import '../database.dart';

class AccountsTable extends SupabaseTable<AccountsRow> {
  @override
  String get tableName => 'Accounts';

  @override
  AccountsRow createRow(Map<String, dynamic> data) => AccountsRow(data);
}

class AccountsRow extends SupabaseDataRow {
  AccountsRow(super.data);

  @override
  SupabaseTable get table => AccountsTable();

  int get accountNumber => getField<int>('AccountNumber')!;
  set accountNumber(int value) => setField<int>('AccountNumber', value);

  String get accountType => getField<String>('AccountType')!;
  set accountType(String value) => setField<String>('AccountType', value);

  int? get balance => getField<int>('Balance');
  set balance(int? value) => setField<int>('Balance', value);
}
