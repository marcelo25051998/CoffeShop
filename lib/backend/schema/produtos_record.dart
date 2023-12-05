import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  bool hasProduto() => _produto != null;

  // "Comprado" field.
  bool? _comprado;
  bool get comprado => _comprado ?? false;
  bool hasComprado() => _comprado != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uld" field.
  String? _uld;
  String get uld => _uld ?? '';
  bool hasUld() => _uld != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _produto = snapshotData['Produto'] as String?;
    _comprado = snapshotData['Comprado'] as bool?;
    _img = snapshotData['img'] as String?;
    _desc = snapshotData['desc'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uld = snapshotData['uld'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? produto,
  bool? comprado,
  String? img,
  String? desc,
  double? preco,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uld,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Produto': produto,
      'Comprado': comprado,
      'img': img,
      'desc': desc,
      'preco': preco,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uld': uld,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    return e1?.produto == e2?.produto &&
        e1?.comprado == e2?.comprado &&
        e1?.img == e2?.img &&
        e1?.desc == e2?.desc &&
        e1?.preco == e2?.preco &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uld == e2?.uld &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(ProdutosRecord? e) => const ListEquality().hash([
        e?.produto,
        e?.comprado,
        e?.img,
        e?.desc,
        e?.preco,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uld,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
