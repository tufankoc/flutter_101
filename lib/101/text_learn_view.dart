import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key}) : super(key: key);
  final String name = "Tufan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome $name ${name.length}',
              maxLines: 2, // maksimum satır
              overflow: TextOverflow.ellipsis, //sığmama , üçnokta
              textAlign: TextAlign.left, //Metin hizalama , sol
              style: ProjectStyles.welcomeStyle.copyWith(color: Colors.pink),
            ),
            Text(
              'Welcome $name ${name.length}',
              maxLines: 2, // maksimum satır
              overflow: TextOverflow.ellipsis, //sığmama , üçnokta
              textAlign: TextAlign.left, //Metin hizalama , sol
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.purpleAccent),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2, // kelime aralığı
      decoration: TextDecoration.underline, // , altını çizme
      fontStyle: FontStyle.italic,
      color: Colors.cyan,
      letterSpacing: 2, // harf boşluğu
      fontSize: 16,
      fontWeight: FontWeight.w600);
}
