import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:imc_dio/src/domain/enum/imc_enum.dart';

void main() {
  group('ImcEnum', () {
    group('-> title', () {
      test('--> should return title correct from magrezaGrave', () {
        final result = ImcEnum.magrezaGrave.title;
        expect(result, 'Magreza Grave');
      });
      test('--> should return title correct from magrezaModerada', () {
        final result = ImcEnum.magrezaModerada.title;
        expect(result, 'Magreza Moderada');
      });

      test('--> should return title correct from magrezaLeve', () {
        final result = ImcEnum.magrezaLeve.title;
        expect(result, 'Magreza Leve');
      });

      test('--> should return title correct from saudavel', () {
        final result = ImcEnum.saudavel.title;
        expect(result, 'Saudável');
      });

      test('--> should return title correct from sobrepeso', () {
        final result = ImcEnum.sobrepeso.title;
        expect(result, 'Sobrepeso');
      });

      test('--> should return title correct obesidadeGrau1', () {
        final result = ImcEnum.obesidadeGrau1.title;
        expect(result, 'Obesidade Grau I');
      });

      test('--> should return title correct from obesidadeGrau2', () {
        final result = ImcEnum.obesidadeGrau2.title;
        expect(result, 'Obesidade Grau II');
      });

      test('--> should return title correct from obesidadeGrau3', () {
        final result = ImcEnum.obesidadeGrau3.title;
        expect(result, 'Obesidade Grau III');
      });
    });

    group('-> fromValueToEnum', () {
      test('--> should return imc correct from valueToEnum 15.5', () {
        final result = ImcEnum.fromValueToEnum(15.5);
        expect(result, ImcEnum.magrezaGrave);
      });

      test('--> should return imc correct from valueToEnum 16.8', () {
        final result = ImcEnum.fromValueToEnum(16.8);
        expect(result, ImcEnum.magrezaModerada);
      });

      test('--> should return imc correct from valueToEnum 18.2', () {
        final result = ImcEnum.fromValueToEnum(18.2);
        expect(result, ImcEnum.magrezaLeve);
      });

      test('--> should return imc correct from valueToEnum 23.5', () {
        final result = ImcEnum.fromValueToEnum(23.5);
        expect(result, ImcEnum.saudavel);
      });

      test('--> should return imc correct from valueToEnum 27.9', () {
        final result = ImcEnum.fromValueToEnum(27.9);
        expect(result, ImcEnum.sobrepeso);
      });

      test('--> should return imc correct from valueToEnum 31.5', () {
        final result = ImcEnum.fromValueToEnum(31.5);
        expect(result, ImcEnum.obesidadeGrau1);
      });

      test('--> should return imc correct from valueToEnum 39', () {
        final result = ImcEnum.fromValueToEnum(39);
        expect(result, ImcEnum.obesidadeGrau2);
      });

      test('--> should return imc correct from valueToEnum 42.5', () {
        final result = ImcEnum.fromValueToEnum(42.5);
        expect(result, ImcEnum.obesidadeGrau3);
      });
    });

    group('-> color', () {
      test('--> should return color correct from magrezaGrave', () {
        final result = ImcEnum.magrezaGrave.color;
        expect(result, Colors.red);
      });

      test('--> should return color correct from magrezaModerada', () {
        final result = ImcEnum.magrezaModerada.color;
        expect(result, Colors.orange);
      });

      test('--> should return color correct from magrezaLeve', () {
        final result = ImcEnum.magrezaLeve.color;
        expect(result, Colors.lime);
      });

      test('--> should return color correct from saudavel', () {
        final result = ImcEnum.saudavel.color;
        expect(result, Colors.green);
      });

      test('--> should return color correct from sobrepeso', () {
        final result = ImcEnum.sobrepeso.color;
        expect(result, Colors.lime);
      });

      test('--> should return color correct from obesidadeGrau1', () {
        final result = ImcEnum.obesidadeGrau1.color;
        expect(result, Colors.orange);
      });

      test('--> should return color correct from obesidadeGrau2', () {
        final result = ImcEnum.obesidadeGrau2.color;
        expect(result, Colors.redAccent);
      });

      test('--> should return color correct from obesidadeGrau3', () {
        final result = ImcEnum.obesidadeGrau3.color;
        expect(result, Colors.red);
      });
    });

    group('-> icon', () {
      test('--> should return icon correct from magrezaGrave', () {
        final result = ImcEnum.magrezaGrave.icon;
        expect(result, Icons.sentiment_very_dissatisfied);
      });

      test('--> should return icon correct from magrezaModerada', () {
        final result = ImcEnum.magrezaModerada.icon;
        expect(result, Icons.sentiment_dissatisfied);
      });

      test('--> should return icon correct from magrezaLeve', () {
        final result = ImcEnum.magrezaLeve.icon;
        expect(result, Icons.sentiment_satisfied);
      });

      test('--> should return icon correct from saudavel', () {
        final result = ImcEnum.saudavel.icon;
        expect(result, Icons.sentiment_very_satisfied);
      });

      test('--> should return icon correct from sobrepeso', () {
        final result = ImcEnum.sobrepeso.icon;
        expect(result, Icons.sentiment_satisfied);
      });

      test('--> should return icon correct from obesidadeGrau1', () {
        final result = ImcEnum.obesidadeGrau1.icon;
        expect(result, Icons.sentiment_neutral);
      });

      test('--> should return icon correct from obesidadeGrau2', () {
        final result = ImcEnum.obesidadeGrau2.icon;
        expect(result, Icons.sentiment_dissatisfied);
      });

      test('--> should return icon correct from obesidadeGrau3', () {
        final result = ImcEnum.obesidadeGrau3.icon;
        expect(result, Icons.sentiment_very_dissatisfied);
      });
    });
  });
}
