import 'package:digiternak_app/common/styles/styles.dart';
import 'package:digiternak_app/data/remote/auth/auth_repository.dart';
import 'package:digiternak_app/data/remote/cage/cage_repository.dart';
import 'package:digiternak_app/data/remote/home/home_repository.dart';
import 'package:digiternak_app/data/remote/livestock/livestock_repository.dart';
import 'package:digiternak_app/provider/notes/notes_provider.dart';
import 'package:digiternak_app/data/remote/notes/notes_repository.dart';
import 'package:digiternak_app/data/remote/profile/profile_repository.dart';
import 'package:digiternak_app/data/service/api_service.dart';
import 'package:digiternak_app/data/service/profile_service.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/provider/cage/cage_provider.dart';
import 'package:digiternak_app/provider/home/home_provider.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/provider/profile/profile_provider.dart';
import 'package:digiternak_app/provider/upload/upload_provider.dart';
import 'package:digiternak_app/routes/routes.dart';
import 'package:digiternak_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(const DigiTernakApp());
}

class DigiTernakApp extends StatelessWidget {
  const DigiTernakApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => AuthProvider(AuthRepository())),
        ChangeNotifierProvider<ProfileProvider>(
          create: (context) => ProfileProvider(
            ProfileRepository(service: ProfileService(AuthRepository())),
          ),
        ),
        ChangeNotifierProvider(
            create: (context) => HomeProvider(
                repository: HomeRepository(
                    service: ApiService(http.Client(), AuthRepository())))),
        ChangeNotifierProvider(
            create: (context) => CageProvider(
                repository: CageRepository(
                    service: ApiService(http.Client(), AuthRepository())))),
        ChangeNotifierProvider(
            create: (context) => LivestockProvider(
                repository: LivestockRepository(
                    service: ApiService(http.Client(), AuthRepository())))),
        ChangeNotifierProvider(
            create: (context) => NotesProvider(
                NotesRepository(ApiService(http.Client(), AuthRepository())))),
        ChangeNotifierProvider(
            create: (context) => UploadProvider(
                service: ApiService(http.Client(), AuthRepository())))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorObservers: [routeObserver],
        title: 'DigiTernak App',
        theme: appTheme,
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}
