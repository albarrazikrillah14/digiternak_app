import 'package:digiternak_app/data/model/catatan/response/data/catatan_data.dart';
import 'package:digiternak_app/data/model/kandang/response/result/kandang_result.dart';
import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:digiternak_app/data/remote/auth/auth_repository.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/auth/register/register_screen.dart';
import 'package:digiternak_app/ui/dashboard/DashboardLivestockScreen.dart';
import 'package:digiternak_app/ui/dashboard/KandangDetailScreen.dart';
import 'package:digiternak_app/ui/detail_image/detail_image_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/cage/add_cage_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/cage/list/list_cage_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/add_livestock_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/list/list_livestock_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/livestock_upload_image_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/update/update_livestock_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/add/livestock_add_notes_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/detail/livestock_detail_notes_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/list/notes_livestock_list.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/detail/livestock_detail.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/fattening_home_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/notes_home_livestock.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/search/fattening_search_livestocks_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/update/livestock_update_notes.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/ui/profile/complete_data/complete_data_step_one_screen.dart';
import 'package:digiternak_app/ui/profile/profile_screen.dart';
import 'package:digiternak_app/ui/splash/splash_screen.dart';
import 'package:digiternak_app/ui/upload/upload_screen.dart';
import 'package:digiternak_app/widget/qr_widget.dart';
import 'package:flutter/material.dart';

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
  LivestockDetail.routeName: (context) => LivestockDetail(
      data: ModalRoute.of(context)!.settings.arguments as LivestockData?),
  NotesHomeLiveStock.routeName: (context) => const NotesHomeLiveStock(),
  NotesLiveStockList.routeName: (context) => NotesLiveStockList(
        data: ModalRoute.of(context)!.settings.arguments as List<CatatanData>,
      ),
  LivestockDetailNotes.routeName: (context) => LivestockDetailNotes(
        id: ModalRoute.of(context)!.settings.arguments as int,
      ),
  LivestockAddNotesScreen.routeName: (context) =>
      const LivestockAddNotesScreen(),
  ListLivestockScreen.routeName: (context) => ListLivestockScreen(
      data: ModalRoute.of(context)!.settings.arguments as List<LivestockData>),
  LivestockUpdateNotes.routeName: (context) => LivestockUpdateNotes(
      data: ModalRoute.of(context)!.settings.arguments as CatatanData),
  UpdateLivestockScreen.routeName: (context) => UpdateLivestockScreen(
      data: ModalRoute.of(context)!.settings.arguments as LivestockData),
  CompleteDataStepOneScreen.routeName: (context) =>
      const CompleteDataStepOneScreen(),

  QRCodeWidget.routeName: (context) => QRCodeWidget(
        type: ModalRoute.of(context)!.settings.arguments as QRtype,
      ),
  DashboardLivestockScreen.routeName: (context) =>
      const DashboardLivestockScreen(),
  KandangDetailScreen.routeName: (context) => KandangDetailScreen(
      id: ModalRoute.of(context)!.settings.arguments as String),
  AddLivestockScreen.routeName: (context) => const AddLivestockScreen(),

  //Cage
  AddCageScreen.routeName: (context) => const AddCageScreen(),
  LivestockUploadImageScreen.routeName: (context) => LivestockUploadImageScreen(
      livestockId: ModalRoute.of(context)!.settings.arguments as int),
  ListCageScreen.routeName: (context) => ListCageScreen(
      data: ModalRoute.of(context)!.settings.arguments as List<KandangResult>),

  //Upload
  UploadScreen.routeName: (context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final type = args['type'] as UploadType;
    final id = args['id'] as String;
    return UploadScreen(type: type, id: id);
  },

  DetailImageScreen.routeName: (context) => DetailImageScreen(
      data: ModalRoute.of(context)!.settings.arguments as List<String>)
};
