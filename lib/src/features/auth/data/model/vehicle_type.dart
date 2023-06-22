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

class PickupAddressModel {
  final String? address;
  final String? landmark;

  PickupAddressModel({
    this.landmark,
    this.address,
  });

  PickupAddressModel copyWith({
    String? address,
    String? landmark,
  }) =>
      PickupAddressModel(
        address: address ?? this.address,
        landmark: landmark ?? this.landmark,
      );

  factory PickupAddressModel.fromMap(Map<String, dynamic> json) =>
      PickupAddressModel(
        address: json['address'],
        landmark: json['landmark'],
      );

  Map<String, dynamic> toMap() => {
        'address': address,
        'landmark': landmark,
      };
}

List<VehicleTypeWidget> vehicleType = [
  VehicleTypeWidget(vehicle: 'Motor bike', quantity: 3),
  VehicleTypeWidget(vehicle: 'Car', quantity: 3),
  VehicleTypeWidget(vehicle: 'Truck', quantity: 3),
];

List<CustomVendorPickAddressWidget> widgetList = [
  CustomVendorPickAddressWidget()
];

List<PickupAddressModel> pickupAddress = [PickupAddressModel()];

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
