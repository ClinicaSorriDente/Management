Feature: Visualizar Horarios Disponiveis
    As a Paciente
    I want to Visualizar horarios disponiveis
    So that Verificar horarios disponiveis

    Scenario: Horarios Indisponiveis
      Given estou na tela de agendar consulta
      Then Eu vejo a mensagem 'Horários Indisponíveis'

    Scenario: Ver que horario esta disponivel
      Given estou na tela de consulta
      When eu clico para criar nova consulta
      Then eu vejo que '15:52' esta disponivel

    Scenario: Ver que horario esta indisponivel
      Given estou na tela de consulta
      When eu clico para criar nova consulta
      Then eu vejo que '15:53' esta indisponivel

  Scenario: mudar horario de indisponivel para disponivel
    Given estou na tela de consulta
    And eu vejo uma consulta com horario '15:51'
    When eu clico para excluir esta consulta
    Then eu vejo que '15:51' esta disponivel

  Scenario: mudar horario de disponivel para indisponivel
    Given estou na tela de consulta
    And eu nao vejo uma consulta com horario '15:54'
    When eu clico para criar uma nova consulta
    Then eu vejo que agora '15:54' esta indisponivel
