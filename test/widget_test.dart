import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Image pegunungan muncul di layar', (WidgetTester tester) async {
    // Buat widget sederhana yang menampilkan gambar
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Image(
            image: AssetImage(''),
          ),
        ),
      ),
    );

    // Verifikasi apakah Image dengan AssetImage tersebut ada
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Image &&
            widget.image is AssetImage &&
            (widget.image as AssetImage).assetName ==
                'assets/images/bromo.png',
      ),
      findsOneWidget,
    );
  });
}

