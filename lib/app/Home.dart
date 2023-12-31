import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tips/provider/provider.dart';

import 'page2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    print("entire rebuild");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber),
              ),
              child: Text("Go to Page1"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page2(),
                  ),
                );
              },
            ),
            Consumer<ProviderDemo>(
              builder: (context, value, child) {
                print('consumer onlyy rebuilding');
                return Text(value.test);
              },
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<ProviderDemo>(context, listen: false)
                    .changeValue('Code.......');
              },
              child: Text('change Value'),
            ),
            SizedBox(height: 10),
            Provider.of<ProviderDemo>(context).widget(),
          ],
        ),
      ),
    );
  }
}
