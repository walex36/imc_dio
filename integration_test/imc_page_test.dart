import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:imc_dio/src/domain/enum/imc_enum.dart';
import 'package:integration_test/integration_test.dart';
import 'package:imc_dio/main.dart' as app;

import '../test/mock/pessoa_mock.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('ImcPage', () {
    testWidgets('-> should return imc correct from calculate Magreza grave',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      var tfName = find.byKey(const Key('tfName'));
      var tfHeight = find.byKey(const Key('tfHeight'));
      var tfWeight = find.byKey(const Key('tfWeight'));
      var btnCalculate = find.byKey(const Key('btnCalculate'));
      var cardResult = find.byKey(const Key('cardResult'));

      expect(cardResult, findsNothing);

      await tester.enterText(tfName, pessoaMagrezaGrave.nome);
      await tester.enterText(tfHeight, pessoaMagrezaGrave.altura.toString());
      await tester.enterText(tfWeight, pessoaMagrezaGrave.peso.toString());

      await tester.tap(btnCalculate);
      await tester.pumpAndSettle();

      expect(find.text('Limpar'), findsOneWidget);
      expect(find.text("${pessoaMagrezaGrave.nome} seu imc é $imcMagrezaGrave"),
          findsOneWidget);
      expect(find.byIcon(ImcEnum.magrezaGrave.icon), findsOneWidget);
      expect(find.text(ImcEnum.magrezaGrave.title), findsOneWidget);
      expect((cardResult.evaluate().first.widget as Card).color,
          ImcEnum.magrezaGrave.color);
    });

    testWidgets('-> should return imc correct from calculate Magreza moderada',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      var tfName = find.byKey(const Key('tfName'));
      var tfHeight = find.byKey(const Key('tfHeight'));
      var tfWeight = find.byKey(const Key('tfWeight'));
      var btnCalculate = find.byKey(const Key('btnCalculate'));
      var cardResult = find.byKey(const Key('cardResult'));

      expect(cardResult, findsNothing);

      await tester.enterText(tfName, pessoaMagrezaModerada.nome);
      await tester.enterText(tfHeight, pessoaMagrezaModerada.altura.toString());
      await tester.enterText(tfWeight, pessoaMagrezaModerada.peso.toString());

      await tester.tap(btnCalculate);
      await tester.pumpAndSettle();

      expect(find.text('Limpar'), findsOneWidget);
      expect(
          find.text(
              "${pessoaMagrezaModerada.nome} seu imc é $imcMagrezaModerada"),
          findsOneWidget);
      expect(find.byIcon(ImcEnum.magrezaModerada.icon), findsOneWidget);
      expect(find.text(ImcEnum.magrezaModerada.title), findsOneWidget);
      expect((cardResult.evaluate().first.widget as Card).color,
          ImcEnum.magrezaModerada.color);
    });

    testWidgets('-> should return imc correct from calculate Magreza leve',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      var tfName = find.byKey(const Key('tfName'));
      var tfHeight = find.byKey(const Key('tfHeight'));
      var tfWeight = find.byKey(const Key('tfWeight'));
      var btnCalculate = find.byKey(const Key('btnCalculate'));
      var cardResult = find.byKey(const Key('cardResult'));

      expect(cardResult, findsNothing);

      await tester.enterText(tfName, pessoaMagrezaLeve.nome);
      await tester.enterText(tfHeight, pessoaMagrezaLeve.altura.toString());
      await tester.enterText(tfWeight, pessoaMagrezaLeve.peso.toString());

      await tester.tap(btnCalculate);
      await tester.pumpAndSettle();

      var cardResultWidget = cardResult.evaluate().first.widget as Card;

      expect(find.text('Limpar'), findsOneWidget);
      expect(find.text("${pessoaMagrezaLeve.nome} seu imc é $imcMagrezaLeve"),
          findsOneWidget);
      expect(find.byIcon(ImcEnum.magrezaLeve.icon), findsOneWidget);
      expect(find.text(ImcEnum.magrezaLeve.title), findsOneWidget);
      expect(cardResultWidget.color, ImcEnum.magrezaLeve.color);
    });

    testWidgets('-> should return imc correct from calculate Saudavel',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      var tfName = find.byKey(const Key('tfName'));
      var tfHeight = find.byKey(const Key('tfHeight'));
      var tfWeight = find.byKey(const Key('tfWeight'));
      var btnCalculate = find.byKey(const Key('btnCalculate'));
      var cardResult = find.byKey(const Key('cardResult'));

      expect(cardResult, findsNothing);

      await tester.enterText(tfName, pessoaSaudavel.nome);
      await tester.enterText(tfHeight, pessoaSaudavel.altura.toString());
      await tester.enterText(tfWeight, pessoaSaudavel.peso.toString());

      await tester.tap(btnCalculate);
      await tester.pumpAndSettle();

      expect(find.text('Limpar'), findsOneWidget);
      expect(find.text("${pessoaSaudavel.nome} seu imc é $imcSaudavel"),
          findsOneWidget);
      expect(find.byIcon(ImcEnum.saudavel.icon), findsOneWidget);
      expect(find.text(ImcEnum.saudavel.title), findsOneWidget);
      expect((cardResult.evaluate().first.widget as Card).color,
          ImcEnum.saudavel.color);
    });

    testWidgets('-> should return imc correct from calculate Sobrepeso',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      var tfName = find.byKey(const Key('tfName'));
      var tfHeight = find.byKey(const Key('tfHeight'));
      var tfWeight = find.byKey(const Key('tfWeight'));
      var btnCalculate = find.byKey(const Key('btnCalculate'));
      var cardResult = find.byKey(const Key('cardResult'));

      expect(cardResult, findsNothing);

      await tester.enterText(tfName, pessoaSobrepeso.nome);
      await tester.enterText(tfHeight, pessoaSobrepeso.altura.toString());
      await tester.enterText(tfWeight, pessoaSobrepeso.peso.toString());

      await tester.tap(btnCalculate);
      await tester.pumpAndSettle();

      expect(find.text('Limpar'), findsOneWidget);
      expect(find.text("${pessoaSobrepeso.nome} seu imc é $imcSobrepeso"),
          findsOneWidget);
      expect(find.byIcon(ImcEnum.sobrepeso.icon), findsOneWidget);
      expect(find.text(ImcEnum.sobrepeso.title), findsOneWidget);
      expect((cardResult.evaluate().first.widget as Card).color,
          ImcEnum.sobrepeso.color);
    });

    testWidgets('-> should return imc correct from calculate Obesidade 1',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      var tfName = find.byKey(const Key('tfName'));
      var tfHeight = find.byKey(const Key('tfHeight'));
      var tfWeight = find.byKey(const Key('tfWeight'));
      var btnCalculate = find.byKey(const Key('btnCalculate'));
      var cardResult = find.byKey(const Key('cardResult'));

      expect(cardResult, findsNothing);

      await tester.enterText(tfName, pessoaObesidade1.nome);
      await tester.enterText(tfHeight, pessoaObesidade1.altura.toString());
      await tester.enterText(tfWeight, pessoaObesidade1.peso.toString());

      await tester.tap(btnCalculate);
      await tester.pumpAndSettle();

      expect(find.text('Limpar'), findsOneWidget);
      expect(find.text("${pessoaObesidade1.nome} seu imc é $imcObesidade1"),
          findsOneWidget);
      expect(find.byIcon(ImcEnum.obesidadeGrau1.icon), findsOneWidget);
      expect(find.text(ImcEnum.obesidadeGrau1.title), findsOneWidget);
      expect((cardResult.evaluate().first.widget as Card).color,
          ImcEnum.obesidadeGrau1.color);
    });

    testWidgets('-> should return imc correct from calculate Obesidade 2',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      var tfName = find.byKey(const Key('tfName'));
      var tfHeight = find.byKey(const Key('tfHeight'));
      var tfWeight = find.byKey(const Key('tfWeight'));
      var btnCalculate = find.byKey(const Key('btnCalculate'));
      var cardResult = find.byKey(const Key('cardResult'));

      expect(cardResult, findsNothing);

      await tester.enterText(tfName, pessoaObesidade2.nome);
      await tester.enterText(tfHeight, pessoaObesidade2.altura.toString());
      await tester.enterText(tfWeight, pessoaObesidade2.peso.toString());

      await tester.tap(btnCalculate);
      await tester.pumpAndSettle();

      expect(find.text('Limpar'), findsOneWidget);
      expect(find.text("${pessoaObesidade2.nome} seu imc é $imcObesidade2"),
          findsOneWidget);
      expect(find.byIcon(ImcEnum.obesidadeGrau2.icon), findsOneWidget);
      expect(find.text(ImcEnum.obesidadeGrau2.title), findsOneWidget);
      expect((cardResult.evaluate().first.widget as Card).color,
          ImcEnum.obesidadeGrau2.color);
    });

    testWidgets('-> should return imc correct from calculate Obesidade 3',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      var tfName = find.byKey(const Key('tfName'));
      var tfHeight = find.byKey(const Key('tfHeight'));
      var tfWeight = find.byKey(const Key('tfWeight'));
      var btnCalculate = find.byKey(const Key('btnCalculate'));
      var cardResult = find.byKey(const Key('cardResult'));

      expect(cardResult, findsNothing);

      await tester.enterText(tfName, pessoaObesidade3.nome);
      await tester.enterText(tfHeight, pessoaObesidade3.altura.toString());
      await tester.enterText(tfWeight, pessoaObesidade3.peso.toString());

      await tester.tap(btnCalculate);
      await tester.pumpAndSettle();

      expect(find.text('Limpar'), findsOneWidget);
      expect(find.text("${pessoaObesidade3.nome} seu imc é $imcObesidade3"),
          findsOneWidget);
      expect(find.byIcon(ImcEnum.obesidadeGrau3.icon), findsOneWidget);
      expect(find.text(ImcEnum.obesidadeGrau3.title), findsOneWidget);
      expect((cardResult.evaluate().first.widget as Card).color,
          ImcEnum.obesidadeGrau3.color);
    });

    testWidgets('-> should success to clean data', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      var tfName = find.byKey(const Key('tfName'));
      var tfHeight = find.byKey(const Key('tfHeight'));
      var tfWeight = find.byKey(const Key('tfWeight'));
      var btnCalculate = find.byKey(const Key('btnCalculate'));
      var cardResult = find.byKey(const Key('cardResult'));

      expect(cardResult, findsNothing);

      await tester.enterText(tfName, pessoaMagrezaLeve.nome);
      await tester.enterText(tfHeight, pessoaMagrezaLeve.altura.toString());
      await tester.enterText(tfWeight, pessoaMagrezaLeve.peso.toString());

      await tester.tap(btnCalculate);
      await tester.pumpAndSettle();

      var tfNameWidget = tfName.evaluate().first.widget as TextFormField;
      var tfHeightWidget = tfHeight.evaluate().first.widget as TextFormField;
      var tfWeightWidget = tfWeight.evaluate().first.widget as TextFormField;
      var cardResultWidget = cardResult.evaluate().first.widget as Card;

      expect(tfNameWidget.enabled, false);
      expect(tfHeightWidget.enabled, false);
      expect(tfWeightWidget.enabled, false);
      expect(find.text('Limpar'), findsOneWidget);
      expect(find.text("${pessoaMagrezaLeve.nome} seu imc é $imcMagrezaLeve"),
          findsOneWidget);
      expect(find.byIcon(ImcEnum.magrezaLeve.icon), findsOneWidget);
      expect(find.text(ImcEnum.magrezaLeve.title), findsOneWidget);
      expect(cardResultWidget.color, ImcEnum.magrezaLeve.color);

      await tester.tap(btnCalculate);
      await tester.pumpAndSettle();

      expect(cardResult, findsNothing);

      tfNameWidget = find.byKey(const Key('tfName')).evaluate().first.widget
          as TextFormField;
      tfHeightWidget = find.byKey(const Key('tfHeight')).evaluate().first.widget
          as TextFormField;
      tfWeightWidget = find.byKey(const Key('tfWeight')).evaluate().first.widget
          as TextFormField;

      expect(tfNameWidget.enabled, true);
      expect(tfHeightWidget.enabled, true);
      expect(tfWeightWidget.enabled, true);
      expect(tfNameWidget.controller!.text, '');
      expect(find.text('Calcular'), findsOneWidget);
    });
  });
}
