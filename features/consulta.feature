Feature: Consulta
  As a Paciente
  I want to agendar minha consulta
  So that eu possa ser atendido por um Dentista

  Scenario: Agender nova consulta
    Given estou logado como paciente de CPF '70383167450'
    And existe o paciente de Nome 'Rodrigo Leandro dos Santos', CPF '70383167450', nascimento "2001-04-25", telefone '87998165631' e email 'rodrigo.leandro.zx@gmail.com'
    And existe um dentista de Nome 'Rodrigo'
    When eu seleciono o paciente de Nome 'Rodrigo Leandro dos Santos', Dentista 'Rodrigo', Horario '22/03/2023 - 08:00'
    And clico em Criar Consultum
    Then eu vejo a mensagem: Consulta foi criada com sucesso.

  Scenario: Agendar consulta com data invalida
    Given estou logado como paciente de CPF '70383167450'
    And existe o paciente de Nome 'Rodrigo Leandro dos Santos', CPF '70383167450', nascimento "2001-04-25", telefone '87998165631' e email 'rodrigo.leandro.zx@gmail.com'
    And existe um dentista de Nome 'Rodrigo'And estou na tela de criar Consulta
    When eu seleciono o paciente de Nome 'Rodrigo Leandro dos Santos', Dentista 'Rodrigo', Horario '22/03/2021 - 08:00'
    And clico em Criar Consultum
    Then eu vejo a mensagem: Data inválida, marque uma data futura e não passada.

  Scenario: Criar uma consulta com horario não coberto pelo dentista
    Given estou logado como paciente de CPF '70383167450'
    And existe o paciente de Nome 'Rodrigo Leandro dos Santos', CPF '70383167450', nascimento "2001-04-25", telefone '87998165631' e email 'rodrigo.leandro.zx@gmail.com'
    And existe um dentista de Nome 'Rodrigo'And estou na tela de criar Consulta
    When eu seleciono o paciente de Nome 'Rodrigo Leandro dos Santos', Dentista 'Rodrigo', Horario '22/03/2023 - 23:00'
    And clico em Criar Consultum
    Then eu vejo a mensagem: Horário não coberto pelo dentista.

  Scenario: Criar uma consulta com horario vazio
    Given estou logado como paciente de CPF '70383167450'
    And existe o paciente de Nome 'Rodrigo Leandro dos Santos', CPF '70383167450', nascimento "2001-04-25", telefone '87998165631' e email 'rodrigo.leandro.zx@gmail.com'
    And existe um dentista de Nome 'Rodrigo'And estou na tela de criar Consulta
    When eu seleciono o paciente de Nome 'Rodrigo Leandro dos Santos', Dentista 'Rodrigo', Horario '22/03/2023'
    And clico em Criar Consultum
    Then eu vejo a mensagem: Selecione um horário.

  Scenario: Criar uma consulta sem dentista
    Given estou logado como paciente de CPF '70383167450'
    And existe o paciente de Nome 'Rodrigo Leandro dos Santos', CPF '70383167450', nascimento "2001-04-25", telefone '87998165631' e email 'rodrigo.leandro.zx@gmail.com'
    And nao existe dentista disponivel
    When eu seleciono o paciente de Nome 'Rodrigo Leandro dos Santos', Dentista '', Horario '22/03/2023 14:00'
    And clico em Criar Consultum
    Then eu vejo a mensagem: Não é possivel se consultar sem um dentista.
