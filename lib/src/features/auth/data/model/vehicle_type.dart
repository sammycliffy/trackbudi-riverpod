// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/custom_vendor_widget.dart';

class VehicleTypeWidget {
  final String? vehicle;
  final int? quantity;

  VehicleTypeWidget({
    this.vehicle,
    this.quantity,
  });

  VehicleTypeWidget copyWith({
    String? vehicle,
    int? quantity,
  }) =>
      VehicleTypeWidget(
        vehicle: vehicle ?? this.vehicle,
        quantity: quantity ?? this.quantity,
      );

  factory VehicleTypeWidget.fromMap(Map<String, dynamic> json) =>
      VehicleTypeWidget(
        vehicle: json['vehicle'],
        quantity: json['quantity'],
      );

  Map<String, dynamic> toMap() => {
        'vehicle': vehicle,
        'quantity': quantity,
      };
}

class PickupAddressModel extends Equatable {
  final String id;
  final String? address;
  final String? landmark;

  const PickupAddressModel({
    required this.id,
    this.landmark,
    this.address,
  });

  PickupAddressModel copyWith({
    String? address,
    String? landmark,
  }) =>
      PickupAddressModel(
        id: id,
        address: address ?? this.address,
        landmark: landmark ?? this.landmark,
      );

  factory PickupAddressModel.fromMap(Map<String, dynamic> json) =>
      PickupAddressModel(
        id: json['id'],
        address: json['address'],
        landmark: json['landmark'],
      );

  Map<String, dynamic> toMap() => {
        'address': address,
        'landmark': landmark,
      };

  @override
  List<Object?> get props => [address, landmark];
}

List<VehicleTypeWidget> vehicleType = [
  VehicleTypeWidget(vehicle: 'Motor bike', quantity: 0),
  VehicleTypeWidget(vehicle: 'Car', quantity: 0),
  VehicleTypeWidget(vehicle: 'Truck', quantity: 0),
];

List<CustomVendorPickAddressWidget> widgetList = [
  CustomVendorPickAddressWidget()
];

List<String> deliveriesPerMonth = [
  '0 - 100',
  '100 - 1000',
  '1000 - 10000',
  '10000',
  'Just getting started'
];

List<String> aboutUs = [
  'Word of mouth',
  'Instagram',
  'Twitter',
  'Google Search',
];

String countryName = 'Nigeria';
List<String> category = [
  'Category A',
  'Category B',
  'Category C',
  'Category D',
];
