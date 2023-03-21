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

