Feature: Consulta
  As a Paciente
  I want to agendar minha consulta
  So that eu possa ser atendido por um Dentista

  Scenario: Agender nova consulta
    Given estou na tela de paciente
    And existe o paciente de Nome 'Rodrigo Leandro dos Santos', CPF '43673037218'
    And existe um dentista de Nome 'zezo' e cpf '17518717468'
    When eu seleciono o paciente de Nome 'Rodrigo Leandro dos Santos', Dentista 'zezo', Horario '22/03/2023 - 08:00'
    And clico em Criar Consultum
    Then eu vejo a mensagem: Consulta foi criada com sucesso.

  Scenario: Agendar consulta com data invalida
    Given estou na tela de paciente
    And existe o paciente de Nome 'thiago', CPF '70383167450'
    And existe um dentista de Nome 'cleiton' e cpf '17401111330'
    And estou na tela de criar Consulta
    When eu seleciono o paciente de Nome 'thiago', Dentista 'cleiton', Horario '22/01/2021 - 05:00'
    And clico em Criar Consultum
    Then eu vejo a mensagem: Data inválida, marque uma data futura e não passada.

  Scenario: Criar uma consulta com horario não coberto pelo dentista
    Given estou na tela de paciente
    And existe o paciente de Nome 'pedro', CPF '91426270950'
    And existe um dentista de Nome 'jf' e cpf '28460856259'
    And estou na tela de criar Consulta
    When eu seleciono o paciente de Nome 'pedro', Dentista 'jf', Horario '22/04/2023 - 23:00'
    And clico em Criar Consultum
    Then eu vejo a mensagem: Horário não coberto pelo dentista.

  Scenario: Criar uma consulta com horario vazio
    Given estou na tela de paciente
    And existe o paciente de Nome 'lucas', CPF '72937762506'
    And existe um dentista de Nome 'carlos' e cpf '74838314728'
    And estou na tela de criar Consulta
    When eu seleciono o paciente de Nome 'lucas', Dentista 'carlos', Horario '22/04/2023'
    And clico em Criar Consultum
    Then eu vejo a mensagem: Selecione um horário.

  Scenario: Criar uma consulta sem dentista
    Given estou na tela de paciente
    And existe o paciente de Nome 'matheus', CPF '68058677205'
    And nao existe dentista disponivel
    When eu seleciono o paciente de Nome 'matheus', Dentista vazio, Horario '22/04/2023 14:00'
    And clico em Criar Consultum
    Then eu vejo a mensagem: Não é possivel se consultar sem um dentista.
