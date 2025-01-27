# ERP - Acaiteria 

## Requisitos funcionais
[] - cadastrar itens no estoque
[] - cadastrar itens no cardápio a partir de itens no estoque 
[] - cadastrar a plataforma onde um item será comercializado e sua respectiva taxa
[] - cadastrar entradas e saídas de itens no estoque (fluxo de caixa)
[] - definir preço do item no cardápio considerando o custo por quantidade utilizada e plataforma de circulação 
[] - listar todos os itens cadastrados 
[] - listar todos os itens no cardápio
[] - marcas podem cadastrar listas de produtos na plataforma
[] - usuários podem acessar catalogo de produtos de marcas/lojas parceiras
[] - opção de cruzamento de estoque com caixa (estimar estoque restante com base nas saídas)
[] - usar preço de um produto em cada marca para estimar preço médio daquele produto
## Requisitos não-funcionais 
[] - Banco de dados relacional 
[] - Uso de ORM (prisma)

## Regras de negócio 
[] - Quando um item do cardápio for vendido (saída) a aplicação deve dar baixa na quantidade de itens do estoque utilizada. 
[] - Quando o estoque for resposto (entrada) a quantidade do item reposto deve ser atualizada. 
[] - Deve haver um registro de atualização do estoque que agrupe todas as saídas diárias em um único registro no fechamento do caixa. 



### Racunhos 
tb_pedido 
+ de 1 item
taxa de entrega 
plataforma

- servico de calculo de taxa de entrega 
- armazena o endereço do cliente e calcula a taxa a partir da distância 



npx prisma migrate dev 
npx prisma studio 