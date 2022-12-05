import 'package:estacionamentofacilapp/src/models/item_model.dart';
import 'package:estacionamentofacilapp/src/models/usuario_model.dart';

import '../models/veiculo_model.dart';

ItemModel vaga1 = ItemModel(NumeroVaga: '1');
ItemModel vaga2 = ItemModel(NumeroVaga: '2');
ItemModel vaga3 = ItemModel(NumeroVaga: '3');
ItemModel vaga4 = ItemModel(NumeroVaga: '4');
ItemModel vaga5 = ItemModel(NumeroVaga: '5');

List<ItemModel> items = [vaga1, vaga2, vaga3, vaga4, vaga5];

UsuarioModel usuarioLogado = UsuarioModel(usuario: 'João Teste Usuário');
UsuarioModel usuarioLogado2 = UsuarioModel(usuario: 'Maria Teste Usuario');

List<UsuarioModel> usuarios = [usuarioLogado, usuarioLogado2];


List<VeiculoModel> veiculosItens = [
  VeiculoModel(cliente: 'José de Souza', cpfCliente: '01242586709', placa: '123abcd', cor: 'azul', modelo: 'sedan',),
  VeiculoModel(cliente: 'Maria Rosa', cpfCliente: '02105460186', placa: '157ASDQ', cor: 'Branco', modelo: 'Hatch',),
];