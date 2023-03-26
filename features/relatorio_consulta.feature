Feature: Relatorio_consulta
  As a Recepcionista
  I want to marcar falta ou presenca do paciente
  So that eu possa automatizar e auxiliar o processo de presenca

  Scenario: excluir relatorio_consulta
    Given eu estou na pagina de relatorio_consulta
    And eu vejo um relatorio_consulta com comentario "paciente com febre"
    When eu clico em remover o relatorio_consulta
    Then eu vejo uma mensagem que o relatorio_consulta foi removido

  Scenario: cadastrar relatorio_consulta sem comentario
    Given eu estou na pagina de criar relatorio_consulta
    When eu preecho um relatorio_consulta com a checkbox de presenca marcada
    And clico em criar relatorio_consulta
    Then Eu vejo uma mensagem de relatorio_consulta invalido

  Scenario: cadastrar relatorio_consulta com comentario invalido
    Given eu estou na pagina de criar relatorio_consulta da consulta do paciente com cpf '74649087244'
    When eu preecho um relatorio_consulta com comentario "abc" e marco a checkbox de presenca
    And clico em criar relatorio_consulta
    Then Eu vejo uma mensagem de relatorio_consulta invalido

  Scenario: visualizar relatorio_consulta
    Given eu estou na pagina de consulta
    When eu clico em ver relatorio de consulta
    Then eu vejo o relatorio_consulta e suas informacoes

  Scenario: cadastrar relatorio_consulta corretamente
    Given eu estou na pagina de criar relatorio_consulta da consulta do paciente com cpf '29843309430' e do dentista com cpf '97493874654'
    When eu preecho um relatorio_consulta com comentario "paciente com febre" e marco a checkbox de presenca
    And clico em criar relatorio_consulta
    Then Eu vejo uma mensagem de relatorio_consulta criado com sucesso