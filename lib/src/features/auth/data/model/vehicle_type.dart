// List<Map<String, dynamic>> vehicleType = [
//   {'vehicle_type': 'Motor bike', 'quantity': 3, 'isChecked': false},
//   {'vehicle_type': 'Car', 'quantity': 3, 'isChecked': false},
//   {'vehicle_type': 'Truck', 'quantity': 3, 'isChecked': false}
// ];

class VehicleTypeWidget {
  String vehicleType;
  int quantity;
  bool isChecked;

  VehicleTypeWidget({
    required this.vehicleType,
    required this.quantity,
    required this.isChecked,
  });
}
