import 'package:digiternak_app/data/remote/auth/auth_repository.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/provider/profile/profile_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/profile/complete_data/complete_data_step_one_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profile_screen";

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProfileProvider>(
      create: (context) => ProfileProvider(),
      child: Consumer<ProfileProvider>(
        builder: (context, profileProvider, _) {
          return ChangeNotifierProvider(
            create: (context) => AuthProvider(AuthRepository()),
            child: Consumer<AuthProvider>(
              builder: (context, authProvider, _) {
                return BaseScreen(
                  title: "Profile",
                  indexBar: 1,
                  isRoot: true,
                  state: profileProvider.state,
                  body: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/ic_profile.png",
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 16),
                              const ProfileDetail(
                                title: "Akun",
                                data: {
                                  'username': 'zikrux',
                                  'email': 'zikrux@gmail.com',
                                  'status': 'Peternak'
                                },
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              profileProvider.state == ResultState.noData
                                  ? const ProfileNoData()
                                  : const ProfileDetail(
                                      title: "Data Diri",
                                      data: {
                                        'Nama': 'Albarra Zikrillah',
                                        'NIK': '1122334455667788',
                                        'No. Hp': '081122334455',
                                        'Kelamin': 'Laki - Laki',
                                        'Tanggal Lahir': '19 Mei 2022',
                                        'Tempat Lahir': 'Balio',
                                        'Alamat': 'Babakan Raya',
                                      },
                                    ),
                              const SizedBox(height: 16),
                              InkWell(
                                onTap: () async {
                                  await authProvider.logout();
                                  // ignore: use_build_context_synchronously
                                  Navigator.pushReplacementNamed(
                                      context, LoginScreen.routeName);
                                },
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "Logout",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ProfileNoData extends StatelessWidget {
  const ProfileNoData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PrimaryButton(
        onPressed: () {
          Navigator.pushNamed(context, CompleteDataStepOneScreen.routeName);
        },
        title: "LENGKAPI DATA DIRI",
      ),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  final Map<String, String> data;
  final String title;
  const ProfileDetail({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  String key = data.keys.toList()[index];
                  String value = data.values.toList()[index];
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(key),
                          Text(value),
                        ],
                      ),
                      if (index < data.length - 1) const Divider(),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
