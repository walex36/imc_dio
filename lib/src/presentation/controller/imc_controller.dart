import 'package:imc_dio/src/domain/entities/pessoa_entity.dart';
import 'package:imc_dio/src/domain/enum/imc_enum.dart';

class ImcController {
  Pessoa calculate({
    required String name,
    required double peso,
    required double altura,
  }) {
    Pessoa pessoa = Pessoa(nome: name, peso: peso, altura: altura);
    final imcEnum = ImcEnum.fromValueToEnum(pessoa.imc);

    pessoa = pessoa.copyWith(
      imcEnum: imcEnum,
    );

    return pessoa;
  }
}
