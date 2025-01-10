import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN READ ACCOUNTS
Future<List<ReadAccountsRow>> performReadAccounts(
  Database database,
) {
  const query = '''
SELECT * FROM accounts
''';
  return _readQuery(database, query, (d) => ReadAccountsRow(d));
}

class ReadAccountsRow extends SqliteRow {
  ReadAccountsRow(super.data);

  String get accountType => data['account_type'] as String;
  String? get accountNumber => data['account_number'] as String?;
  double? get balance => data['balance'] as double?;
}

/// END READ ACCOUNTS
