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
import 'package:digiternak_app/provider/feature/fattening/cage_provider.dart';
import 'package:digiternak_app/provider/home/home_provider.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/provider/profile/profile_provider.dart';
import 'package:digiternak_app/provider/upload/upload_provider.dart';
import 'package:digiternak_app/routes/routes.dart';
import 'package:digiternak_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
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
        title: 'DigiTernak App',
        theme: ThemeData(
          textTheme: myTextTheme,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: primaryColor,
                onPrimary: Colors.black,
                secondary: secondaryColor,
              ),
          appBarTheme: const AppBarTheme(
              elevation: 0, iconTheme: IconThemeData(color: Colors.white)),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: secondaryColor),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            labelStyle: TextStyle(color: titleColor),
            hintStyle: TextStyle(color: Colors.grey),
            iconColor: Colors.blue,
            prefixIconColor: Colors.blue,
            suffixIconColor: Colors.blue,
          ),
        ),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}
