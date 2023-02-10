[![Codacy Badge](https://app.codacy.com/project/badge/Grade/18c2ea2d78d24112b7c1aeb4556f0827)](https://www.codacy.com/gh/ClinicaSorriDente/Manegement/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=ClinicaSorriDente/Manegement&amp;utm_campaign=Badge_Grade) [![Build Status](https://travis-ci.com/esMEIproject/gerenciamento-servicos.svg?branch=main)](https://travis-ci.com/esMEIproject/gerenciamento-servicos)

# Sistema de gerenciamento de clínica odontológica
## :octocat: Integrantes
[Rogério Lacerda](https://github.com/RogerioLacerdaGH) | [José Elias](https://github.com/Eliaz500) | [Gison Vilaça](https://github.com/gison-vilaca) | [Rodrigo Leandro](https://github.com/rudrigozx)
## :page_with_curl: Sobre o Projeto
É uma implementação de um SaaS escrita em Ruby e Rails com foco no servidor para a disciplina de __Engenharia de Software__ ministrada pelo Professor Dr. [Rodrigo Andrade](https://github.com/rcaa), da UFAPE, referente ao período de 2022.1 com intuito de avaliação para a 2ª Verificação de Aprendizagem.
O projeto possui 3 tipos de usuários, que são: paciente, recepcionista e administrador. O sistema gerencia as consultas de um consultório odontológico. Nele, é possível a realização de: cadrastamentos, visualizações, edições e remoções nos 3 tipos de usuários(com a exceção da função de remover do "administrador padrão"). Dessa maneira, o sistema executa todas as funcionalidades possíveis para o auxílio de todos os usuários do consultório, sejam eles os usários que são atendidos, como os que atendem.

*   [Site no Railway](https://gerenciamento-servicos.herokuapp.com) :robot:

## :round_pushpin: Objetivos
Um recepcionista pode editar e visualizar apenas a si mesmo. Um visitante do sistema deve ser capaz de cadastrar-se como paciente e
consequentemente editar, remover e visualizar seu perfil. Um administrador deve ser capaz de cadastrar uma entidade dentista que não é um perfil de usuário, essa entidade deve possuir o horário de atendimento para cada dia que trabalha na clínica, bem como informações sobre o dentista e suas especializações. Tudo isso deve ser visível para o paciente na hora de marcar uma consulta. Um recepcionista deve ser capaz de alterar os horários de um dentista se necessário enquanto que os pacientes devem ser capazes de marcar a consulta em horários não ocupados por outros pacientes. Os recepcionistas devem ser capazes de marcar e desmarcar uma consulta realizada por um paciente. Além disso, pode confirmar a presença do paciente quando eles chegarem ao consultório (a consulta deve ficar registrada no sistema, horário, nome do dentista, paciente, etc.).

## :hammer_and_wrench: Tecnologias Usadas
 ### [Ruby](https://www.ruby-lang.org/pt/)
*   Versão 3.1.1
 ### [Rails](https://rubyonrails.org/)
*   Versão 7.0.2.2
 ### [Codacy](https://www.codacy.com/product)
 ### [Travis CI](https://travis-ci.org/)
 ### [Railway](https://railway.app/)
## :construction: Status do Projeto
Em andamento
## :keyboard: Acessando o sistema
Você ainda não poderá fazer o login
