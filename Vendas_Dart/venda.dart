import './cliente.dart';
import './venda_item.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda({this.cliente, this.itens = const []});

  double get valorTotal {
    if (itens == null) return 0;

    return itens
        .map((item) => item.preco * item.quantidade)
        .reduce((acumulado, precoItem) => acumulado + precoItem);
  }
}
