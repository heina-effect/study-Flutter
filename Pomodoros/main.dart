import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color(0xFFE7626C),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

/*class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text('Hey, Heina',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w800)),
                            Text('Welcome back',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7))),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                          fontSize: 22, color: Colors.white.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$5 194 382',
                      style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Button(
                          text: 'Transfer',
                          bgColor: Color(0xFFF1B33B),
                          textColor: Colors.black,
                        ),
                        Button(
                          text: 'Request',
                          bgColor: Color(0xFF1F2123),
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Wallets',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CurrencyCard(
                        name: 'Euro',
                        code: 'EUR',
                        amount: '6 428',
                        icon: Icons.euro_rounded,
                        isInverted: false,
                        order: 0,
                        ),
                    const CurrencyCard(
                        name: 'Bitcoin',
                        code: 'BTC',
                        amount: '9 785',
                        icon: Icons.currency_bitcoin,
                        isInverted: true,
                        order: 1),
                    const CurrencyCard(
                        name: 'Dollar',
                        code: 'USD',
                        amount: '485',
                        icon: Icons.money,
                        isInverted: false,
                        order: 2,),
                  ]),
            ),
          )),
    );
  }
}*/
