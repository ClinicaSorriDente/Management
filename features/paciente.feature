Feature: Paciente
  As a Paciente
  I want to criar, editar, visualizar, e excluir minha conta
  So that eu possa gerenciar minha conta no sistema

  Scenario: Criar conta de paciente sem atributos
    Given eu estou na tela de criar novo paciente
    When eu preencho os campos com nome '', nascimento '', cpf '', telefone '',  email '', cep '', cidade '', bairro '', logradouro '' e complemento ''
    And clico em Criar Paciente
    Then eu vejo uma mensagem de erro informando que nao foi possivel criar paciente devido aos campos invalidos

  Scenario: Criar conta de paciente com cpf inexistente
    Given eu estou na tela de criar novo paciente
    When eu preencho os campos com nome 'Gison Vilaca', nascimento "2001-04-25", cpf '135.469.494-56', telefone '01234567890', email 'gison@gmail.com', cep '55435000', cidade 'Sao Joao', bairro 'Parque Alvorada', logradouro 'Rua do Educandario' e complemento 'Casa'
    And clico em Criar Paciente
    Then eu vejo uma mensagem de erro informando Cpf Inválido ou Inexistente

  Scenario: Criar conta de paciente com todos os atributos validos
    Given eu estou na tela de criar novo paciente
    When eu preencho os campos com nome 'Gison Vilaca', nascimento "2001-04-25", cpf '135.469.494-55', telefone '01234567890', email 'gison@gmail.com', cep '55435000', cidade 'Sao Joao', bairro 'Parque Alvorada', logradouro 'Rua do Educandario' e complemento 'Casa'
    And clico em Criar Paciente
    Then eu vejo uma mensagem informando que a conta de Paciente foi criada com sucesso

  Scenario: Editar conta de paciente
    Given eu estou na tela de paciente
    When eu vejo a conta com nome 'Gison Morais', nascimento "2001-04-25", cpf '321.056.268-74', telefone '01234567890', email 'gison@gmail.com', cep '55435000', cidade 'Sao Joao', bairro 'Parque Alvorada', logradouro 'Rua do Educandario' e complemento 'Casa'
    And clico em editar este paciente
    When eu edito a conta com nome 'Gison Vilaca Morais', telefone '09876543210'
    And clico em Atualizar Paciente
    Then eu vejo uma mensagem informando que a conta de Paciente foi atualizada com sucesso

  Scenario: Remover conta de paciente
    Given eu estou na tela de paciente
    When eu vejo a conta com nome 'Gison', nascimento "2001-04-25", cpf '392.124.303-33', telefone '01234567890', email 'gison@gmail.com', cep '55435000', cidade 'Sao Joao', bairro 'Parque Alvorada', logradouro 'Rua do Educandario' e complemento 'Casa'
    And clico em Remover Paciente
    Then eu vejo uma mensagem informando que a conta de Paciente foi deletada com sucesso
