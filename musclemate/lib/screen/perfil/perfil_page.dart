

import 'package:flutter/material.dart';
import 'package:musclemate/components/perfil/perfil.dart';

import 'package:musclemate/screen/perfil/perfil_activitys_page.dart';
import 'package:musclemate/screen/perfil/perfil_progress_page.dart';

import '../home_config/configuration_page.dart';



class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  _PerfilPageState createState()=> _PerfilPageState();
}
class _PerfilPageState extends State<PerfilPage>{


 void _navigateToConfigurations() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ConfigurationPage()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(32, 48, 105, 1),
          title: const Text('Perfil'),
          actions: [
            IconButton(
              onPressed: _navigateToConfigurations,
              icon: const Icon(Icons.settings),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Progresso'),
              Tab(text: 'Atividades'),
              Tab(text: 'Perfil'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PerfilProgressPage(),
            PerfilActivitysPage(),
            Perfil(),
          ],
        ),
      ),
    );
  }
}
