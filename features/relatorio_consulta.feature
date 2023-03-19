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
    When eu preecho um relatorio_consulta com presente "true"
    And clico em criar relatorio_consulta
    Then Eu vejo uma mensagem de relatorio_consulta invalido

  Scenario: cadastrar relatorio_consulta com comentario invalido
    Given eu estou na pagina de criar relatorio_consulta
    When eu preecho um relatorio_consulta com presente "true" e comentario "abc"
    And clico em criar relatorio_consulta
    Then Eu vejo uma mensagem de relatorio_consulta invalido

  Scenario: visualizar relatorio_consulta
    Given eu estou na pagina de consulta
    When eu clico em ver relatorio de consulta
    Then eu vejo o relatorio_consulta e suas informações

  Scenario: cadastrar relatorio_consulta corretamente
    Given eu estou na pagina de criar relatorio_consulta
    When eu preecho um relatorio_consulta com presente "true" e comentario "paciente com febre"
    And clico em criar relatorio_consulta
    Then Eu vejo uma mensagem de relatorio_consulta criado com sucesso