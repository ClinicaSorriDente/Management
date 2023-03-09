Feature: Dentista
  As a Admin
  I want to criar, visualizar e excluir um dentista
  So that eu possa gerenciar um dentista no sistema

  Scenario: excluir dentista
    Given eu estou na pagina de dentista
    And eu vejo um dentista com cpf "70383167450"
    When eu clico em remover o dentista
    Then eu vejo uma mensagem que o dentista com cpf "70383167450" foi removido

  Scenario: cadastrar Dentista com CRO invalido
    Given eu estou na pagina de criar dentista
    When eu preecho um dentista com cro '1'
    And clico em criar dentista
    Then Eu vejo uma mensagem de dentista invalido

  Scenario: cadastrar dentista com todos os dados em branco
    Given eu estou na pagina de criar dentista
    When clico em criar dentista
    Then Eu vejo uma mensagem de dentista invalido

  Scenario: cadastrar dentista com cpf que nao existe
    Given eu estou na pagina de criar dentista
    When eu preecho um dentista com cpf '12345678900'
    And clico em criar dentista
    Then Eu vejo uma mensagem de dentista invalido

  Scenario: cadastrar com telefone invalido
    Given eu estou na pagina de criar dentista
    When eu preecho um dentista com telefone 'arroz'
    And clico em criar dentista
    Then Eu vejo uma mensagem de dentista invalido