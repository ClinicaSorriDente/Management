Feature: Recepcionista
  As a Admin
  I want to criar, editar, visualizar e excluir um Recepcionista
  So that eu possa gerenciar um recepcionista no sistema

  Scenario: Criar conta de recepcionista sem atributos
    Given eu estou na tela de criar novo recepcionista
    When preencho os campos com nome '', credencial '', cpf '', telefone '', email ''
    And clico em Criar Recepcionista
    Then eu vejo uma mensagem de erro informando que nao foi possivel criar recepcionista devido aos campos invalidos

  Scenario: Criar conta de recepcionista com cpf inexistente
    Given eu estou na tela de criar novo recepcionista
    When preencho os campos com nome 'Gison Vilaca', credencial '611', cpf '135.469.494-56', telefone '01234567890', email 'gison@gmail.com'
    And clico em Criar Recepcionista
    Then eu vejo uma mensagem informando o erro: Cpf Inválido ou Inexistente

  Scenario: Criar conta de recepcionista com todos os atributos validos
    Given eu estou na tela de criar novo recepcionista
    When preencho os campos com nome 'Gison Vilaca', credencial '611', cpf '135.469.494-55', telefone '01234567890', email 'gison@gmail.com'
    And clico em Criar Recepcionista
    Then eu vejo uma mensagem informando que a conta de Recepcionista foi criada com sucesso

  Scenario: Editar conta de recepcionista
    Given eu estou na tela de recepcionista
    When eu vejo a conta com nome 'Gison Morais', credencial '611', cpf '321.056.268-74', telefone '01234567890', email 'gison@gmail.com'
    And clico em editar este recepcionista
    When edito a conta com nome 'Gison Vilaca Morais', telefone '09876543210'
    And clico em Atualizar Recepcionista
    Then eu vejo uma mensagem informando que a conta de Recepcionista foi atualizada com sucesso

  Scenario: Remover conta de recepcionista
    Given eu estou na tela de recepcionista
    When eu vejo a conta com nome 'Gison', credencial '611', cpf '392.124.303-33', telefone '01234567890', email 'gison@gmail.com'
    And clico em Remover Recepcionista
    Then eu vejo uma mensagem informando que a conta de Recepcionista foi deletada com sucesso

