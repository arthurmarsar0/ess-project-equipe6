Feature: Acessar pedidos de reservas de uma localidade
	As a  usuário PJ do sistema
	I want to  Ver os pedidos de reservas e as reservas confirmadas de uma localidade
	So that  Eu posso gerenciar as reservas em aberto e confirmadas

Scenario: Abrir reservas de uma localidade
	Given  estou na página “Gerenciar reservas”
	And  eu vejo que há localidade cadastrada
	When  eu seleciono a reserva “nome da localidade”
	Then  eu vou para a página de reservas da “nome da localidade” 

Scenario: Voltar para página de gerenciar reservas
	Given estou na página de reservas da “nome da localidade”
	When seleciono “Escolher outra reserva”
	Then eu volto para a página “Gerenciar reservas”

Scenario: Abrir detalhamento de um pedido de reserva
	Given eu estou na página “nome da localidade”
	And  há pedidos de reservas em “abertos” 
	When  eu seleciono a reserva com “nome do hóspede”
	Then  abre a de detalhamento da reserva de "nome do hóspede” 

Scenario: Confirmar uma reserva
	Given estou na página de detalhamento da reserva “nome do hóspede”
    And a reserva "nome do hóspede” está em aberto
	When confirmo a reserva
	Then a reserva é confirmada
And uma mensagem de aviso é exibida “Reserva confirmada”
	And eu volto para página “nome da localidade”

Scenario: Recusar uma reserva
	Given estou na página de detalhamento da reserva “nome do hóspede”
	And a reserva "nome do hóspede” está em aberto
	When recuso a reserva
	Then a reserva é recusada
	And uma mensagem de aviso é exibida “Reserva recusada”
	And eu volto para página “nome da localidade"


Scenario: Cancelar uma reserva (como eu faço para ter uma pop-up de confirmação?)
	Given estou na página de detalhamento da reserva “nome do hóspede”
And a reserva "nome do hóspede” está confirmada
	When cancelo uma reserva
	Then 
	And eu volto para página “nome da localidade”
