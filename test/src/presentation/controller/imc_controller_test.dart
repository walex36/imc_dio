import 'package:flutter_test/flutter_test.dart';
import 'package:imc_dio/src/presentation/controller/imc_controller.dart';

import '../../../mock/pessoa_mock.dart';

void main() {
  late ImcController controller;

  setUp(() {
    controller = ImcController();
  });
  group('ImcController', () {
    group('-> calculate', () {
      test('--> should return pessoa correct from calculate pessoaMagrezaGrave',
          () {
        final result = controller.calculate(
          name: pessoaMagrezaGrave.nome,
          peso: pessoaMagrezaGrave.peso,
          altura: pessoaMagrezaGrave.altura,
        );

        expect(result.equals(pessoaMagrezaGrave), true);
      });

      test(
          '--> should return pessoa correct from calculate pessoaMagrezaModerada',
          () {
        final result = controller.calculate(
          name: pessoaMagrezaModerada.nome,
          peso: pessoaMagrezaModerada.peso,
          altura: pessoaMagrezaModerada.altura,
        );

        expect(result.equals(pessoaMagrezaModerada), true);
      });

      test('--> should return pessoa correct from calculate magrezaLeve', () {
        final result = controller.calculate(
          name: pessoaMagrezaLeve.nome,
          peso: pessoaMagrezaLeve.peso,
          altura: pessoaMagrezaLeve.altura,
        );

        expect(result.equals(pessoaMagrezaLeve), true);
      });

      test('--> should return pessoa correct from calculate pessoaSaudavel',
          () {
        final result = controller.calculate(
          name: pessoaSaudavel.nome,
          peso: pessoaSaudavel.peso,
          altura: pessoaSaudavel.altura,
        );

        expect(result.equals(pessoaSaudavel), true);
      });

      test('--> should return pessoa correct from calculate pessoaSobrepeso',
          () {
        final result = controller.calculate(
          name: pessoaSobrepeso.nome,
          peso: pessoaSobrepeso.peso,
          altura: pessoaSobrepeso.altura,
        );

        expect(result.equals(pessoaSobrepeso), true);
      });

      test('--> should return pessoa correct from calculate pessoaObesidade1',
          () {
        final result = controller.calculate(
          name: pessoaObesidade1.nome,
          peso: pessoaObesidade1.peso,
          altura: pessoaObesidade1.altura,
        );

        expect(result.equals(pessoaObesidade1), true);
      });

      test('--> should return pessoa correct from calculate pessoaObesidade2',
          () {
        final result = controller.calculate(
          name: pessoaObesidade2.nome,
          peso: pessoaObesidade2.peso,
          altura: pessoaObesidade2.altura,
        );

        expect(result.equals(pessoaObesidade2), true);
      });

      test('--> should return pessoa correct from calculate pessoaObesidade3',
          () {
        final result = controller.calculate(
          name: pessoaObesidade3.nome,
          peso: pessoaObesidade3.peso,
          altura: pessoaObesidade3.altura,
        );

        expect(result.equals(pessoaObesidade3), true);
      });
    });
  });
}
