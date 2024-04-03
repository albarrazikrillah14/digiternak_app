import 'package:digiternak_app/data/model/profile/user_request.dart';
import 'package:digiternak_app/data/remote/auth/auth_repository.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/provider/profile/profile_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/auth/register/register_screen.dart';
import 'package:digiternak_app/ui/dashboard/DashboardLivestockScreen.dart';
import 'package:digiternak_app/ui/dashboard/KandangDetailScreen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/add/livestock_add_notes_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/detail/livestock_detail_notes_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/list/notes_livestock_list.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/search/detail/livestock_detail.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/home/fattening_home_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/notes_home_livestock.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/search/fattening_search_livestocks_screen.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/ui/profile/complete_data/complete_data_step_one_screen.dart';
import 'package:digiternak_app/ui/profile/complete_data/complete_data_step_three_screen.dart';
import 'package:digiternak_app/ui/profile/complete_data/complete_data_step_two_screen.dart';
import 'package:digiternak_app/ui/profile/profile_screen.dart';
import 'package:digiternak_app/ui/splash/splash_screen.dart';
import 'package:digiternak_app/widget/qr_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  SplashScreen.routeName: (context) => SplashScreen(
        authProvider: AuthProvider(AuthRepository()),
      ),
  LoginScreen.routeName: (context) => const LoginScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  FatteningHomeScreen.routeName: (context) => const FatteningHomeScreen(),
  FatteningSearchLiveStocksScreen.routeName: (context) =>
      const FatteningSearchLiveStocksScreen(),
  LivestockDetail.routeName: (context) =>
      LivestockDetail(id: ModalRoute.of(context)!.settings.arguments as String),
  NotesHomeLiveStock.routeName: (context) => NotesHomeLiveStock(),
  NotesLiveStockList.routeName: (context) => NotesLiveStockList(
      id: ModalRoute.of(context)!.settings.arguments as String),
  LivestockDetailNotes.routeName: (context) => LivestockDetailNotes(
        id: ModalRoute.of(context)!.settings.arguments as String,
      ),
  LivestockAddNotesScreen.routeName: (context) => LivestockAddNotesScreen(
        id: ModalRoute.of(context)!.settings.arguments as String,
      ),
  CompleteDataStepOneScreen.routeName: (context) =>
      const CompleteDataStepOneScreen(),
  CompleteDataStepTwoScreen.routeName: (context) => CompleteDataStepTwoScreen(
        userRequest: ModalRoute.of(context)!.settings.arguments as UserRequest,
      ),
  CompleteDataStepThreeScreen.routeName: (context) =>
      CompleteDataStepThreeScreen(
        userRequest: ModalRoute.of(context)!.settings.arguments as UserRequest,
      ),
  QRCodeWidget.routeName: (context) => QRCodeWidget(
        type: ModalRoute.of(context)!.settings.arguments as QRtype,
      ),
  DashboardLivestockScreen.routeName: (context) => DashboardLivestockScreen(),
  KandangDetailScreen.routeName: (context) => KandangDetailScreen(
      id: ModalRoute.of(context)!.settings.arguments as String)
};

final List<ChangeNotifierProvider> providers = [
  ChangeNotifierProvider(create: (context) => AuthProvider(AuthRepository())),
  ChangeNotifierProvider(create: (context) => ProfileProvider())
];
