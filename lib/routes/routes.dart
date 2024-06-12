import 'package:digiternak_app/data/model/bcs/response/data/bcs_data.dart';
import 'package:digiternak_app/data/model/notes/response/data/note_data.dart';
import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:digiternak_app/data/remote/auth/auth_repository.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/auth/register/register_screen.dart';
import 'package:digiternak_app/ui/features/cage/detail_cage_screen.dart';
import 'package:digiternak_app/ui/detail_image/detail_image_screen.dart';
import 'package:digiternak_app/ui/features/cage/add_cage_screen.dart';
import 'package:digiternak_app/ui/features/cage/list/list_cage_screen.dart';
import 'package:digiternak_app/ui/features/livestock/add_livestock_screen.dart';
import 'package:digiternak_app/ui/features/livestock/list/list_livestock_screen.dart';
import 'package:digiternak_app/ui/features/livestock/livestock_upload_image_screen.dart';
import 'package:digiternak_app/ui/features/livestock/update/update_livestock_screen.dart';
import 'package:digiternak_app/ui/features/notes/bcs/add/add_bcs_screen.dart';
import 'package:digiternak_app/ui/features/notes/bcs/detail/detail_bcs_screen.dart';
import 'package:digiternak_app/ui/features/notes/bcs/edit/edit_bcs_screen.dart';
import 'package:digiternak_app/ui/features/notes/bcs/list/list_bcs_screen.dart';
import 'package:digiternak_app/ui/features/notes/food/add/add_note_screen.dart';
import 'package:digiternak_app/ui/features/notes/food/detail/detail_note_screen.dart';
import 'package:digiternak_app/ui/features/notes/food/list/list_notes_screen.dart';
import 'package:digiternak_app/ui/features/livestock/detail/livestock_detail.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/fattening_home_screen.dart';
import 'package:digiternak_app/ui/features/notes/home_notes_screen.dart';
import 'package:digiternak_app/ui/features/livestock/home/home_livestock_screen.dart';
import 'package:digiternak_app/ui/features/notes/food/update/update_note_screen.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/ui/profile/complete_data/edit_profile_screen.dart';
import 'package:digiternak_app/ui/profile/profile_screen.dart';
import 'package:digiternak_app/ui/qr_code/qrcode_screen.dart';
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
  HomeLivestockScreen.routeName: (context) => const HomeLivestockScreen(),
  LivestockDetail.routeName: (context) => LivestockDetail(
      data: ModalRoute.of(context)!.settings.arguments as LivestockData?),
  HomeNotesScreen.routeName: (context) => const HomeNotesScreen(),
  ListNotesScreen.routeName: (context) => ListNotesScreen(
        data: ModalRoute.of(context)!.settings.arguments as List<NoteData>,
      ),
  DetailNoteScreen.routeName: (context) => DetailNoteScreen(
        id: ModalRoute.of(context)!.settings.arguments as int,
      ),
  AddNoteScreen.routeName: (context) => const AddNoteScreen(),
  ListLivestockScreen.routeName: (context) => const ListLivestockScreen(),
  UpdateNoteScreen.routeName: (context) => UpdateNoteScreen(
      data: ModalRoute.of(context)!.settings.arguments as NoteData),
  UpdateLivestockScreen.routeName: (context) => UpdateLivestockScreen(
      data: ModalRoute.of(context)!.settings.arguments as LivestockData),
  EditProfileScreen.routeName: (context) => const EditProfileScreen(),

  QRCodeWidget.routeName: (context) => QRCodeWidget(
        type: ModalRoute.of(context)!.settings.arguments as QRtype,
      ),
  DetailCageScreen.routeName: (context) => DetailCageScreen(
      id: ModalRoute.of(context)!.settings.arguments as String),
  AddLivestockScreen.routeName: (context) => const AddLivestockScreen(),

  //Cage
  AddCageScreen.routeName: (context) => const AddCageScreen(),
  LivestockUploadImageScreen.routeName: (context) => LivestockUploadImageScreen(
      livestockId: ModalRoute.of(context)!.settings.arguments as int),
  ListCageScreen.routeName: (context) => const ListCageScreen(),

  //Upload
  UploadScreen.routeName: (context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final type = args['type'] as UploadType;
    final id = args['id'] as String;
    return UploadScreen(type: type, id: id);
  },

  DetailImageScreen.routeName: (context) => DetailImageScreen(
      data: ModalRoute.of(context)!.settings.arguments as List<String>),

  QRCodeScreen.routeName: (context) =>
      QRCodeScreen(data: ModalRoute.of(context)!.settings.arguments as String),

  //BCS
  AddBcsScreen.routeName: (context) => const AddBcsScreen(),
  ListBcsScreen.routeName: (context) => ListBcsScreen(
      data: ModalRoute.of(context)!.settings.arguments as List<BcsData>),
  DetailBcsScreen.routeName: (context) => DetailBcsScreen(
      data: ModalRoute.of(context)!.settings.arguments as BcsData),
  EditBcsScreen.routeName: (context) => EditBcsScreen(
      data: ModalRoute.of(context)!.settings.arguments as BcsData),
};
