import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final Color capaMoradaFigma = const Color(0xFF9E7DFF)
        .withValues(alpha: 0.25);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          stops: const [0.0, 0.39, 0.88],
          colors: [
            Color.alphaBlend(capaMoradaFigma, const Color(0xFF8ABCDB)), // 0%
            Color.alphaBlend(capaMoradaFigma, const Color(0xFF6A91A8)), // 39%
            Color.alphaBlend(capaMoradaFigma, const Color(0xFF53687E)), // 88%
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: false,
        appBar: miAppBar(),

        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Container(
                //"¿Qué guardarás hoy?"
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 22.0,
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF8CA6DB), Color(0xFF7B92C4)],
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.28),
                    width: 1.2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF283552).withValues(alpha: 0.45),
                      blurRadius: 10,
                      offset: const Offset(-5, 8),
                    ),
                  ],
                ),
                child: const Text(
                  "¿Qué guardarás hoy?",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                children: [
                  Icon(Icons.access_time_filled, color: Colors.white, size: 22),
                  SizedBox(width: 10),
                  Text(
                    "Últimos objetos",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 200),
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                children: [
                  Icon(Icons.assignment, color: Colors.white, size: 22),
                  SizedBox(width: 10),
                  Text(
                    "Acciones",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        //BARRA DE NAVEGACIÓN
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            border: Border(
              top: BorderSide(
                color: Colors.white.withValues(alpha: 0.2),
                width: 1,
              ),
            ),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF6E7EA2), Color(0xFF586484)],
            ),
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.all(
                const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            child: NavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              onDestinationSelected: (int index) {},
              indicatorColor: Colors.white.withValues(alpha: 0.18),
              selectedIndex: 0,
              destinations: const <Widget>[
                NavigationDestination(
                  selectedIcon: Icon(Icons.groups, color: Colors.white),
                  icon: Icon(Icons.groups_outlined, color: Colors.white),
                  label: 'Mi circulo',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.add, color: Colors.white),
                  icon: Icon(Icons.add, color: Colors.white),
                  label: 'Nuevo Articulo',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.videocam, color: Colors.white),
                  icon: Icon(Icons.videocam_outlined, color: Colors.white),
                  label: 'Escanear',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar miAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        width: 180,
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFF889FD0),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.35),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF283552).withValues(alpha: 0.45),
              offset: const Offset(-4, 6),
              blurRadius: 6,
            ),
          ],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const Text(
          "Found it!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle_outlined,
            size: 32,
            color: Colors.white,
          ),
        ),
      ),
      leadingWidth: 60.0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none,
            size: 28.0,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              size: 28.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
