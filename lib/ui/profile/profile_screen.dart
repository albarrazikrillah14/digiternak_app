import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/provider/profile/profile_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/profile/complete_data/complete_data_step_one_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = "/profile_screen";

  const ProfileScreen({Key? key}) : super(key: key);

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
            return provider.state == ResultState.loading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.person,
                              size: 64,
                            ),
                            provider.data.fullName == ""
                                ? Container()
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        (provider.data.fullName ?? "").isEmpty
                                            ? "Halo, ${provider.data.username}"
                                            : "Nama Lengkap",
                                        style:
                                            const TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        (provider.data.fullName ?? "")
                                            .toUpperCase(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
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
                              _buildInfoRow(
                                  title: "Username",
                                  value: provider.data.username),
                              _buildInfoRow(
                                  title: "Email", value: provider.data.email),
                              _buildInfoRow(
                                  title: "Status",
                                  value: provider.data.role.name,
                                  isLastData: true),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        (provider.data.fullName ?? "").isEmpty
                            ? PrimaryButton(
                                onPressed: () {
                                  Navigator.pushNamed(context,
                                      CompleteDataStepOneScreen.routeName);
                                },
                                title: "Lengkapi Data Diri")
                            : _ContainerProfile(
                                title: "Data Diri",
                                child: Column(
                                  children: [
                                    _buildInfoRow(
                                        title: "Nama Lengkap",
                                        value: provider.data.fullName ?? ""),
                                    _buildInfoRow(
                                        title: "Tanggal Lahir",
                                        value: provider.data.birthdate ?? ""),
                                    _buildInfoRow(
                                        title: "NIK",
                                        value: provider.data.nik ?? ""),
                                    _buildInfoRow(
                                        title: "Nomor Hp",
                                        value: provider.data.phoneNumber ?? ""),
                                    _buildInfoRow(
                                        title: "Alamat",
                                        value: provider.data.address ?? "",
                                        isLastData: true)
                                  ],
                                ),
                              ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextButton(
                          onPressed: () async {
                            final logout = await authProvider.logout();
                            if (logout) {
                              Navigator.pushNamed(
                                  context, LoginScreen.routeName);
                            }
                          },
                          child: const Row(
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Keluar",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
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
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
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

  Widget _buildInfoRow(
      {required String title, required String value, bool isLastData = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.grey),
              ),
              const SizedBox(
                width: 64,
              ),
              Flexible(
                child: Text(
                  value,
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 10,
                ),
              ),
            ],
          ),
          isLastData ? Container() : const Divider()
        ],
      ),
    );
  }
}
