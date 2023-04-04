Given('estou na tela de paciente') do
  visit 'pacientes'
end

Given('existe o paciente de Nome {string}, CPF {string}') do |nome, cpf|
  visit 'pacientes/new'
  fill_in 'paciente[nome]', with: nome
  fill_in 'paciente[nascimento]', with: "2001-04-25"
  fill_in 'paciente[cpf]', with: cpf
  fill_in 'paciente[telefone]', with: '87998165631'
  fill_in 'paciente[email]', with: 'rodrigo.leandro.zx@gmail.com'
  fill_in 'paciente[endereco_paciente_attributes][cep]', with: '55298165'
  fill_in 'paciente[endereco_paciente_attributes][cidade]', with: 'Garanhuns'
  fill_in 'paciente[endereco_paciente_attributes][bairro]', with: '///////////////////'
  fill_in 'paciente[endereco_paciente_attributes][logradouro]', with: '///////////////////'
  fill_in 'paciente[endereco_paciente_attributes][complemento]', with: '///////////////////'
  click_button 'Criar Paciente'
  expect(page).to have_content('Paciente criado com sucesso.')
  visit 'pacientes'
  expect(page).to have_content(nome)
  expect(page).to have_content(cpf)
end

Given('existe um dentista de Nome {string} e cpf {string}') do |nome,cpf|
  visit '/admin/1/dentista/new'
  fill_in 'dentistum[nome]', with: nome
  fill_in 'dentistum[CPF]', with: cpf
  fill_in 'dentistum[telefone]', with: 87998165631
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: '123456789'
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: '08:00'
  fill_in 'dentistum[horaTermino]', with: "16:00"
  click_button 'Criar Dentista'
  expect(page).to have_content('Dentista foi Criado com sucesso')
  visit 'admin/1/dentista'
  expect(page).to have_content(nome)
end

When('eu seleciono o paciente de Nome {string}, Dentista {string}, Horario {string}') do |paciente, dentista, horario|
  visit '/consulta/new'
  fill_in 'consultum[data]', with: '22/04/2023'
  fill_in 'consultum[horario]', with: horario
  select paciente, from: 'consultum[paciente_id]'
  select dentista, from: 'consultum[dentistum_id]'

end

When('clico em Criar Consultum') do
  click_button 'Criar Consultum'
end

Then('eu vejo a mensagem: Consulta foi criada com sucesso.') do
  expect(page).to have_content('Consulta foi criada com sucesso.')
end


Then('eu vejo a mensagem: Data inválida, marque uma data futura e não passada.') do
  expect(page).to have_content('verifique seus campos')
end

Then('eu vejo a mensagem: Horário não coberto pelo dentista.') do
  expect(page).to have_content('verifique seus campos')
end

Then('eu vejo a mensagem: Selecione um horário.') do
  expect(page).to have_content('verifique seus campos')
end

Given('nao existe dentista disponivel') do
  visit 'admin/1/dentista'
  expect(page).to have_no_content('CPF:')
end

Then('eu vejo a mensagem: Não é possivel se consultar sem um dentista.') do
  expect(page).to have_content('verifique seus campos')
end

Given('estou na tela de criar Consulta') do
  visit '/consulta/new'
end

When('eu seleciono o paciente de Nome {string}, Dentista vazio, Horario {string}') do |paciente, horario|
  visit '/consulta/new'
  fill_in 'consultum[data]', with: '22/04/2023'
  fill_in 'consultum[horario]', with: horario
  select paciente, from: 'consultum[paciente_id]'
  click_button 'Criar Consultum'

end
When('eu seleciono o paciente de Nome {string}, Dentista {string}, Horario {string}, data {string}') do |paciente, dentista, horario, data|
  visit '/consulta/new'
  fill_in 'consultum[data]', with: data
  fill_in 'consultum[horario]', with: horario
  select paciente, from: 'consultum[paciente_id]'
  select dentista, from: 'consultum[dentistum_id]'
end

Then('eu vejo a mensagem: Data inválida') do
  expect(page).to have_content('verifique seus campos')
end
