import 'package:flutter/material.dart';

import 'logic.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext c) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'GlamBook NG',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF0B2A4A),
        secondary: const Color(0xFF00BCD4),
      ),
      useMaterial3: true,
    ),
    home: const Home(),
  );
}

String naira(num v) =>
    '₦${v.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\B)(?=(\d{3})+(?!\d))'), (m) => ',')}';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _S();
}

class _S extends State<Home> {
  int tab = 0;
  String slot = '12:00';
  Service svc = services[0];
  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: const Text('GlamBook NG')),
    body: [_svc(), _book(), _rem()][tab],
    bottomNavigationBar: NavigationBar(
      selectedIndex: tab,
      onDestinationSelected: (i) => setState(() => tab = i),
      destinations: const [
        NavigationDestination(icon: Icon(Icons.spa), label: 'Services'),
        NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Book'),
        NavigationDestination(
          icon: Icon(Icons.notifications),
          label: 'Reminders',
        ),
      ],
    ),
  );
  Widget _svc() => ListView(
    children: services
        .map(
          (s) => ListTile(
            title: Text(s.name),
            subtitle: Text('${s.mins} mins - deposit ${naira(s.deposit)}'),
            trailing: Text(naira(s.price)),
            onTap: () => setState(() {
              svc = s;
              tab = 1;
            }),
          ),
        )
        .toList(),
  );
  Widget _book() => Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(svc.name, style: Theme.of(context).textTheme.titleLarge),
        Text('Stylists: ${stylists.map((s) => s.name).join(', ')}'),
        Wrap(
          spacing: 8,
          children: slots
              .map(
                (s) => ChoiceChip(
                  label: Text(s),
                  selected: slot == s,
                  onSelected: slotTaken(s)
                      ? null
                      : (_) => setState(() => slot = s),
                ),
              )
              .toList(),
        ),
        Text('Deposit due: ${naira(svc.deposit)} (test payment placeholder)'),
        ElevatedButton(onPressed: () {}, child: const Text('Book appointment')),
      ],
    ),
  );
  Widget _rem() => ListView(
    children: bookings
        .map(
          (b) => ListTile(
            leading: const Icon(Icons.alarm),
            title: Text('${b.client} - ${b.service.name}'),
            subtitle: Text('${b.stylist} at ${b.slot}'),
            trailing: const Chip(label: Text('Reminder')),
          ),
        )
        .toList(),
  );
}
