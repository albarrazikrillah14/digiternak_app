import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/common/utils/mapper/mapper.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/provider/profile/profile_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/profile/complete_data/edit_profile_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:digiternak_app/widget/dialog_widget.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = "/profile_screen";

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ProfileProvider provider;
  late AuthProvider authProvider;

  @override
  void initState() {
    super.initState();
    provider = context.read<ProfileProvider>();
    authProvider = context.read<AuthProvider>();

    provider.getProfile();

    if (provider.state == ResultState.unauthorized) {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: provider,
      child: BaseScreen(
        title: 'Profile',
        isRoot: true,
        indexBar: 1,
        body: Consumer<ProfileProvider>(
          builder: (context, provider, child) {
            switch (provider.state) {
              case ResultState.unauthorized:
                return errorWidget(
                  context: context,
                  type: ErrorType.unauthorization,
                );
              case ResultState.loading:
                return loadingScreen();
              case ResultState.hasData:
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/ic_profile.png",
                              width: 64,
                              height: 64,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            provider.data.data!.fullName == ""
                                ? Container()
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        (provider.data.data!.fullName ?? "")
                                                .isEmpty
                                            ? "Halo, ${provider.data.data!.username}"
                                            : "Nama Lengkap",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              color: Colors.grey,
                                            ),
                                      ),
                                      Text(
                                        (provider.data.data!.fullName ?? "")
                                            .toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                                color: Colors.black,
                                                fontSize: 16),
                                      )
                                    ],
                                  ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        _ContainerProfile(
                          title: "Akun",
                          child: Column(
                            children: [
                              CustomRow(
                                  title: "Username",
                                  value: provider.data.data!.username ?? ""),
                              CustomRow(
                                  title: "Email",
                                  value: provider.data.data!.email ?? ""),
                              const CustomRow(
                                  title: "Status",
                                  value: "Peternak",
                                  isLastData: true),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        (provider.data.data!.fullName ?? "").isEmpty
                            ? PrimaryButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, EditProfileScreen.routeName);
                                },
                                title: "Lengkapi Data Diri")
                            : _ContainerProfile(
                                title: "Data Diri",
                                child: Column(
                                  children: [
                                    CustomRow(
                                        title: "Nama Lengkap",
                                        value:
                                            provider.data.data!.fullName ?? ""),
                                    CustomRow(
                                        title: "Kelamin",
                                        value:
                                            provider.data.data!.gender ?? ""),
                                    CustomRow(
                                      title: "Tanggal Lahir",
                                      value: formatTanggal(
                                          provider.data.data!.birthdate ?? ""),
                                    ),
                                    CustomRow(
                                        title: "NIK",
                                        value: provider.data.data!.nik ?? ""),
                                    CustomRow(
                                        title: "Nomor Hp",
                                        value:
                                            provider.data.data!.phoneNumber ??
                                                ""),
                                    CustomRow(
                                        title: "Alamat",
                                        value:
                                            provider.data.data!.address ?? "",
                                        isLastData: true)
                                  ],
                                ),
                              ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                    _ContainerProfile(
                        child: Column(
                          children: [
                            (provider.data.data!.fullName ?? "").isEmpty
                                ? Container()
                                : Column(
                                    children: [
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context,
                                            EditProfileScreen.routeName,
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.edit,
                                              color: Colors.blue,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "Ubah Profile",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .copyWith(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                    ],
                                  ),
                            InkWell(
                              onTap: () {
                                showAlertDialog(
                                    context: context,
                                    title: "Keluar",
                                    messsage: "Apakah Anda Yakin?",
                                    onSuccess: () async {
                                      final logout =
                                          await authProvider.logout();
                                      if (logout) {
                                        Navigator.pushNamedAndRemoveUntil(
                                          context,
                                          LoginScreen.routeName,
                                          (route) => false,
                                        );
                                      }
                                    });
                              },
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.logout_rounded,
                                    color: Colors.red,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Keluar",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontSize: 16, color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        title: "Lainnya"),
                  ],
                );
              default:
                return errorWidget(
                  context: context,
                  message: provider.message,
                  onPress: () async {
                    await provider.getProfile();
                  },
                );
            }
          },
        ),
      ),
    );
  }

  Widget _ContainerProfile({required Widget child, required String title}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 24),
            ),
            const SizedBox(
              height: 8,
            ),
            child
          ],
        ),
      ),
    );
  }
}
