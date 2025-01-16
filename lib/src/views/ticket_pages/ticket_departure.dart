import 'package:along/src/views/ticket_pages/ticket_tab.dart';
import 'package:flutter/material.dart';

class TicketDeparture extends StatelessWidget {
  const TicketDeparture({super.key});
  static const routhName = 'ticket-departure-page';
  static const fullRouth = '${TicketTab.routhName}/$routhName';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Ticket  Page"),
      ),
    );
  }
}
