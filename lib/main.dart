  import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:flutter_login_app/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key,});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("AppBar Title"),
        centerTitle: true,
        leading: const Icon(Icons.phone_android),
      ),
      body: Padding(
        padding:const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text("Title", style: Theme.of(context).textTheme.titleMedium,),
            Text("Sub-Title", style: Theme.of(context).textTheme.titleSmall),
            Text("Paragraph", style: Theme.of(context).textTheme.bodySmall),
            ElevatedButton(
              onPressed: () => {},
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () => {},
              child: const Text("Outlined Button"),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage('assets/images/logo_transparent.png'), height: 300,),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(Icons.add_photo_alternate_outlined),
      ),
    );
  }
}
