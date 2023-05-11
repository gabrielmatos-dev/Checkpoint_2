import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/constants/typography.dart';

import '../models/owner.dart';
import '../models/repository.dart';

class RepoDetailScreen extends StatefulWidget {
  const RepoDetailScreen({Key? key}) : super(key: key);

  @override
  State<RepoDetailScreen> createState() => _RepoDetailScreenState();
}

class _RepoDetailScreenState extends State<RepoDetailScreen> {
  var repository = Repository(
    id: 188897530,
    name: "fiap",
    owner: Owner(
      login: "josecastillolema",
      avatar: "https://avatars.githubusercontent.com/u/7546521?v=4",
    ),
    htmlUrl: "https://github.com/josecastillolema/fiap",
    description: "Aplicações para os cursos de pós-graduação da FIAP",
    url: "https://api.github.com/repos/josecastillolema/fiap",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Detalhes',
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, boxConstraints) {
            return Column(
              children: [
                SizedBox(
                  height: boxConstraints.maxHeight / 4,
                ),
                CustomAvatar(
                  radius: 50,
                  avatarUrl: repository.owner!.avatar ?? '',
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomText(
                  text: 'Repositório:',
                  style: TypographyType.title,
                ),
                CustomText(
                  text: repository.name ?? '',
                  style: TypographyType.label,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomText(
                  text: 'Usuário:',
                  style: TypographyType.title,
                ),
                CustomText(
                    text: repository.owner!.login ?? '',
                    style: TypographyType.label),
                const SizedBox(
                  height: 20,
                ),
                const CustomText(
                  text: 'Descrição:',
                  style: TypographyType.title,
                ),
                CustomText(
                  text: repository.description ?? '',
                  style: TypographyType.label,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
