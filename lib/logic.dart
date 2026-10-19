class Service {
  final String name;
  final int price;
  final int mins;
  const Service(this.name, this.price, this.mins);
  int get deposit => (price * 0.30).round();
}

class Stylist {
  final String name;
  final String specialty;
  const Stylist(this.name, this.specialty);
}

const services = [
  Service('Braids (Medium)', 25000, 180),
  Service('Haircut and Beard', 5000, 45),
  Service('Silk Press', 12000, 90),
  Service('Manicure and Pedicure', 8000, 60),
  Service('Frontal Wig Install', 18000, 120),
];
const stylists = [
  Stylist('Blessing O.', 'Braids and wigs'),
  Stylist('Tayo A.', 'Cuts and beard'),
  Stylist('Amara N.', 'Nails and styling'),
];
const slots = ['09:00', '10:30', '12:00', '13:30', '15:00', '16:30'];

class Booking {
  final String client;
  final Service service;
  final String stylist;
  final String slot;
  const Booking(this.client, this.service, this.stylist, this.slot);
}

final bookings = [
  Booking('Kemi Adebayo', services[0], 'Blessing O.', '09:00'),
  Booking('David Osei', services[1], 'Tayo A.', '10:30'),
];
bool slotTaken(String slot) => bookings.any((b) => b.slot == slot);
