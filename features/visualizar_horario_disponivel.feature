Feature: Visualizar Horarios Disponiveis
    As a Paciente
    I want to Visualizar horarios disponiveis
    So that Verificar horarios disponiveis

    Scenario: Todos Horarios Disponiveis
      Given estou na tela de agendar consulta
      Then Eu vejo 'Não há consultas agendadas'

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

    Scenario: mudar horario de disponivel para indisponivel
      Given estou na tela de consulta
      And eu vejo uma consulta com horario '15:51'
      When eu clico para excluir esta consulta
      Then eu vejo que '15:54' esta disponivel
