// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:movieapp2/core.dart';
import 'route_name.dart';

class AppPage {
  static final pages = [
    GetPage(name: RouteName.homePage, page: () => const HomeView()),
    GetPage(name: RouteName.ticketsPage, page: () => const TicketView()),
  ];
}
