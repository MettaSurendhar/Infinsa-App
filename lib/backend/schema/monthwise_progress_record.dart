import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MonthwiseProgressRecord extends FirestoreRecord {
  MonthwiseProgressRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Expense_Amount" field.
  double? _expenseAmount;
  double get expenseAmount => _expenseAmount ?? 0.0;
  bool hasExpenseAmount() => _expenseAmount != null;

  // "Expense_Date" field.
  String? _expenseDate;
  String get expenseDate => _expenseDate ?? '';
  bool hasExpenseDate() => _expenseDate != null;

  void _initializeFields() {
    _expenseAmount = castToType<double>(snapshotData['Expense_Amount']);
    _expenseDate = snapshotData['Expense_Date'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MonthwiseProgress');

  static Stream<MonthwiseProgressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MonthwiseProgressRecord.fromSnapshot(s));

  static Future<MonthwiseProgressRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MonthwiseProgressRecord.fromSnapshot(s));

  static MonthwiseProgressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MonthwiseProgressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MonthwiseProgressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MonthwiseProgressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MonthwiseProgressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MonthwiseProgressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMonthwiseProgressRecordData({
  double? expenseAmount,
  String? expenseDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Expense_Amount': expenseAmount,
      'Expense_Date': expenseDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class MonthwiseProgressRecordDocumentEquality
    implements Equality<MonthwiseProgressRecord> {
  const MonthwiseProgressRecordDocumentEquality();

  @override
  bool equals(MonthwiseProgressRecord? e1, MonthwiseProgressRecord? e2) {
    return e1?.expenseAmount == e2?.expenseAmount &&
        e1?.expenseDate == e2?.expenseDate;
  }

  @override
  int hash(MonthwiseProgressRecord? e) =>
      const ListEquality().hash([e?.expenseAmount, e?.expenseDate]);

  @override
  bool isValidKey(Object? o) => o is MonthwiseProgressRecord;
}
