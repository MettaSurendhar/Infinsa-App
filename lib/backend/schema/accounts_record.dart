import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountsRecord extends FirestoreRecord {
  AccountsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "account_type" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  bool hasAccountType() => _accountType != null;

  // "account_number" field.
  int? _accountNumber;
  int get accountNumber => _accountNumber ?? 0;
  bool hasAccountNumber() => _accountNumber != null;

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  bool hasBalance() => _balance != null;

  void _initializeFields() {
    _accountType = snapshotData['account_type'] as String?;
    _accountNumber = castToType<int>(snapshotData['account_number']);
    _balance = castToType<double>(snapshotData['balance']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Accounts');

  static Stream<AccountsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccountsRecord.fromSnapshot(s));

  static Future<AccountsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccountsRecord.fromSnapshot(s));

  static AccountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccountsRecordData({
  String? accountType,
  int? accountNumber,
  double? balance,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'account_type': accountType,
      'account_number': accountNumber,
      'balance': balance,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccountsRecordDocumentEquality implements Equality<AccountsRecord> {
  const AccountsRecordDocumentEquality();

  @override
  bool equals(AccountsRecord? e1, AccountsRecord? e2) {
    return e1?.accountType == e2?.accountType &&
        e1?.accountNumber == e2?.accountNumber &&
        e1?.balance == e2?.balance;
  }

  @override
  int hash(AccountsRecord? e) =>
      const ListEquality().hash([e?.accountType, e?.accountNumber, e?.balance]);

  @override
  bool isValidKey(Object? o) => o is AccountsRecord;
}
