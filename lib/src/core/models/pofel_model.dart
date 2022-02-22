import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:pofel_app/src/core/models/pofel_user.dart';

class PofelModel extends Equatable {
  PofelModel({
    required this.name,
    required this.description,
    required this.adminUid,
    required this.spotifyLink,
    required this.pofelLocation,
    this.dateFrom,
    this.dateTo,
    required this.pofelId,
    required this.createdAt,
    required this.joinCode,
    required this.signedUsers,
    required this.showDrugItems,
  });

  final String name;
  final String description;
  final String pofelId;
  final String joinCode;
  final String adminUid;
  final String spotifyLink;
  final GeoPoint pofelLocation;
  final DateTime? dateFrom;
  final DateTime? dateTo;
  final DateTime? createdAt;
  List<PofelUserModel> signedUsers;
  final bool showDrugItems;

  @override
  List<Object?> get props => [pofelId];
}
