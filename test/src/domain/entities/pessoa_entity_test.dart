import 'package:flutter_test/flutter_test.dart';
import 'package:imc_dio/src/domain/entities/pessoa_entity.dart';
import 'package:imc_dio/src/domain/enum/imc_enum.dart';

import '../../../mock/pessoa_mock.dart';

void main() {
  group('PessoaEntity', () {
    group('-> Imc', () {
      test('--> should return imc correct from pessoa MagrezaLeve', () {
        final result = pessoaMagrezaLeve.imc;
        expect(result, double.parse(imcMagrezaLeve));
      });

      test('--> should return imc correct from pessoa MagrezaModerada', () {
        final result = pessoaMagrezaModerada.imc;
        expect(result, double.parse(imcMagrezaModerada));
      });

      test('--> should return imc correct from pessoa MagrezaGrave', () {
        final result = pessoaMagrezaGrave.imc;
        expect(result, double.parse(imcMagrezaGrave));
      });

      test('--> should return imc correct from pessoa Saudavel', () {
        final result = pessoaSaudavel.imc;
        expect(result, double.parse(imcSaudavel));
      });

      test('--> should return imc correct from pessoa sobrepeso', () {
        final result = pessoaSobrepeso.imc;
        expect(result, double.parse(imcSobrepeso));
      });

      test('--> should return imc correct from pessoa obesidade1', () {
        final result = pessoaObesidade1.imc;
        expect(result, double.parse(imcObesidade1));
      });

      test('--> should return imc correct from pessoa obesidade2', () {
        final result = pessoaObesidade2.imc;
        expect(result, double.parse(imcObesidade2));
      });

      test('--> should return imc correct from pessoa obesidade3', () {
        final result = pessoaObesidade3.imc;
        expect(result, double.parse(imcObesidade3));
      });
    });

    group('-> copyWith', () {
      test('--> should success alter name user', () {
        Pessoa result = pessoaMagrezaLeve;
        result = pessoaMagrezaLeve.copyWith(nome: 'Roberto');

        expect(result.nome, 'Roberto');
      });

      test('--> should success alter height user', () {
        Pessoa result = pessoaMagrezaLeve;
        result = pessoaMagrezaLeve.copyWith(altura: 1.59);

        expect(result.altura, 1.59);
      });

      test('--> should success alter weight user', () {
        Pessoa result = pessoaMagrezaLeve;
        result = pessoaMagrezaLeve.copyWith(peso: 60);

        expect(result.peso, 60);
      });

      test('--> should success alter imcEnum user', () {
        Pessoa result = pessoaMagrezaLeve;
        result = pessoaMagrezaLeve.copyWith(imcEnum: ImcEnum.magrezaModerada);

        expect(result.imcEnum, ImcEnum.magrezaModerada);
      });
    });

    group('-> equals', () {
      test('--> should return true pessoas equals', () {
        final result = Pessoa(
          nome: pessoaMagrezaLeve.nome,
          peso: pessoaMagrezaLeve.peso,
          altura: pessoaMagrezaLeve.altura,
          imcEnum: ImcEnum.magrezaLeve,
        ).equals(pessoaMagrezaLeve);

        expect(result, true);
      });

      test('--> should return false pessoas not equals', () {
        final result = Pessoa(
          nome: pessoaMagrezaLeve.nome,
          peso: pessoaMagrezaLeve.peso,
          altura: pessoaMagrezaLeve.altura,
          imcEnum: ImcEnum.magrezaLeve,
        ).equals(pessoaMagrezaModerada);

        expect(result, false);
      });
    });
  });
}
