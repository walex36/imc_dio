import 'package:imc_dio/src/domain/entities/pessoa_entity.dart';
import 'package:imc_dio/src/domain/enum/imc_enum.dart';

const imcMagrezaGrave = '13.84';
final Pessoa pessoaMagrezaGrave = Pessoa(
  nome: 'João',
  peso: 40,
  altura: 1.70,
  imcEnum: ImcEnum.magrezaGrave,
);

const imcMagrezaModerada = '16.96';
final Pessoa pessoaMagrezaModerada = Pessoa(
  nome: 'João',
  peso: 49,
  altura: 1.70,
  imcEnum: ImcEnum.magrezaModerada,
);

const imcMagrezaLeve = '17.99';
final Pessoa pessoaMagrezaLeve = Pessoa(
  nome: 'João',
  peso: 52,
  altura: 1.70,
  imcEnum: ImcEnum.magrezaLeve,
);

const imcSaudavel = '24.22';
final Pessoa pessoaSaudavel = Pessoa(
  nome: 'João',
  peso: 70,
  altura: 1.70,
  imcEnum: ImcEnum.saudavel,
);

const imcSobrepeso = '27.68';
final Pessoa pessoaSobrepeso = Pessoa(
  nome: 'João',
  peso: 80,
  altura: 1.70,
  imcEnum: ImcEnum.sobrepeso,
);

const imcObesidade1 = '31.14';
final Pessoa pessoaObesidade1 = Pessoa(
  nome: 'João',
  peso: 90,
  altura: 1.70,
  imcEnum: ImcEnum.obesidadeGrau1,
);

const imcObesidade2 = '38.06';
final Pessoa pessoaObesidade2 = Pessoa(
  nome: 'João',
  peso: 110,
  altura: 1.70,
  imcEnum: ImcEnum.obesidadeGrau2,
);

const imcObesidade3 = '41.52';
final Pessoa pessoaObesidade3 = Pessoa(
  nome: 'João',
  peso: 120,
  altura: 1.70,
  imcEnum: ImcEnum.obesidadeGrau3,
);
