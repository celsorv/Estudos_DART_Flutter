import './cliente.dart';
import './produto.dart';
import './venda.dart';
import './venda_item.dart';

main() {
  
  var venda = Venda(
    cliente: Cliente(
      nome: 'Fabiana de Souza', 
      cpf: '123.456.789.-00'
    ),
    itens: <VendaItem>[
      VendaItem(
        quantidade: 2,
        produto: Produto(
          codigo: 1, 
          nome: 'Caneta Bic', 
          preco: 6.00, 
          desconto: 0.5
        )
      ),
      VendaItem(
        quantidade: 4,
        produto: Produto(
          codigo: 2, 
          nome: 'Lápis Preto', 
          preco: 4.75, 
          desconto: 0.25
        )
      )
    ]
  );

  print("O valor total da venda é: ${venda.valorTotal}");

  print('Primeiro produto: ${venda.itens[0].produto.nome}');
  
}
