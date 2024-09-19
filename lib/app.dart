import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';  // Importa a classe gerada para localização
import 'login_page.dart';

class App extends StatelessWidget {
  final StatefulWidget initialPage;
  const App({super.key, required this.initialPage});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Achados e Perdidos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // Configuração de internacionalização
      localizationsDelegates: const [
        S.delegate,  // Classe gerada automaticamente para strings localizadas
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,  // Define os idiomas suportados
      // Remove a configuração fixa de locale para usar o idioma do sistema
      locale: null,

      // Defina a tela inicial, como LoginPage ou HomePage
      home: initialPage,
    );
  }
}
