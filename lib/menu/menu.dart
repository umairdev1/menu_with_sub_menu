import 'package:flutter/material.dart';

class MenuWithSubMenu extends StatelessWidget {
  const MenuWithSubMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: ExpansionTile(
                    title: Text("Top Products"),
                    children: List.generate(
                        3,
                        (index) => ListTile(
                              title: Text("Product ${index}"),
                              trailing: Icon(Icons.production_quantity_limits),
                            ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
