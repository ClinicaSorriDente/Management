Given('eu estou na pagina de relatorio_consulta') do
  visit 'pacientes/new'
  fill_in 'paciente[nome]', with: 'Rodrigo Leandro dos Santos'
  fill_in 'paciente[nascimento]', with: "2001-04-25"
  fill_in 'paciente[cpf]', with: '70383167450'
  fill_in 'paciente[telefone]', with: '87998165631'
  fill_in 'paciente[email]', with: 'rodrigo.leandro.zx@gmail.com'
  fill_in 'paciente[endereco_paciente_attributes][cep]', with: '55298165'
  fill_in 'paciente[endereco_paciente_attributes][cidade]', with: 'Garanhuns'
  fill_in 'paciente[endereco_paciente_attributes][bairro]', with: '///////////////////'
  fill_in 'paciente[endereco_paciente_attributes][logradouro]', with: '///////////////////'
  fill_in 'paciente[endereco_paciente_attributes][complemento]', with: '///////////////////'
  click_button 'Criar Paciente'
  expect(page).to have_content('Paciente criado com sucesso.')

  visit '/admin/1/dentista/new'
  fill_in 'dentistum[nome]', with: 'Rodrigo'
  fill_in 'dentistum[CPF]', with: '70383167450'
  fill_in 'dentistum[telefone]', with: 87998165631
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: '123456789'
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: '08:00'
  fill_in 'dentistum[horaTermino]', with: "16:00"
  click_button 'Criar Dentista'
  expect(page).to have_content('Dentista foi Criado com sucesso')

  visit '/consulta/new'
  fill_in 'consultum[data]', with: '22/03/2023'
  fill_in 'consultum[horario]', with: '12:41'
  select 'Rodrigo Leandro dos Santos', from: 'consultum[paciente_id]'
  select 'Rodrigo', from: 'consultum[dentistum_id]'
  click_button 'Criar Consultum'
  visit '/consulta'
  expect(page).to have_content('Rodrigo Leandro dos Santos')

  visit '/consulta/1/relatorio_consulta/new'
  check 'relatorio_consultum[presente]'
  fill_in 'relatorio_consultum[comentario]', with: "paciente com febre"
  click_button 'Criar Relatorio consultum'
end

Given('eu vejo um relatorio_consulta com comentario {string}') do |comentario|
  visit '/consulta/1/relatorio_consulta'
  expect(page).to have_content(comentario)
end

When('eu clico em remover o relatorio_consulta') do
  click_link 'Mostrar este relatorio de consulta'
  click_button 'Destruir este relatorio de consulta'
end

Then('eu vejo uma mensagem que o relatorio_consulta foi removido') do
  expect(page).to have_content("Relatorio de consulta excluido com sucesso")
end

Given('eu estou na pagina de criar relatorio_consulta') do
  visit 'pacientes/new'
  fill_in 'paciente[nome]', with: 'Rodrigo Leandro dos Santos'
  fill_in 'paciente[nascimento]', with: "2001-04-25"
  fill_in 'paciente[cpf]', with: '70383167450'
  fill_in 'paciente[telefone]', with: '87998165631'
  fill_in 'paciente[email]', with: 'rodrigo.leandro.zx@gmail.com'
  fill_in 'paciente[endereco_paciente_attributes][cep]', with: '55298165'
  fill_in 'paciente[endereco_paciente_attributes][cidade]', with: 'Garanhuns'
  fill_in 'paciente[endereco_paciente_attributes][bairro]', with: '///////////////////'
  fill_in 'paciente[endereco_paciente_attributes][logradouro]', with: '///////////////////'
  fill_in 'paciente[endereco_paciente_attributes][complemento]', with: '///////////////////'
  click_button 'Criar Paciente'
  expect(page).to have_content('Paciente criado com sucesso.')

  visit '/admin/1/dentista/new'
  fill_in 'dentistum[nome]', with: 'Rodrigo'
  fill_in 'dentistum[CPF]', with: '70383167450'
  fill_in 'dentistum[telefone]', with: 87998165631
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: '123456789'
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: '08:00'
  fill_in 'dentistum[horaTermino]', with: "16:00"
  click_button 'Criar Dentista'
  expect(page).to have_content('Dentista foi Criado com sucesso')

  visit '/consulta/new'
  fill_in 'consultum[data]', with: '22/03/2023'
  fill_in 'consultum[horario]', with: '12:41'
  select 'Rodrigo Leandro dos Santos', from: 'consultum[paciente_id]'
  select 'Rodrigo', from: 'consultum[dentistum_id]'
  click_button 'Criar Consultum'
  visit '/consulta'
  expect(page).to have_content('Rodrigo Leandro dos Santos')

  visit '/consulta/1/relatorio_consulta/new'


end

When('clico em criar relatorio_consulta') do
  click_button 'Criar Relatorio consultum'
end

Then('Eu vejo uma mensagem de relatorio_consulta invalido') do
  expect(page).to have_content('error prohibited this relatorio_consultum from being saved:')
end

Given('eu estou na pagina de consulta') do
  visit 'pacientes/new'
  fill_in 'paciente[nome]', with: 'Rodrigo Leandro dos Santos'
  fill_in 'paciente[nascimento]', with: "2001-04-25"
  fill_in 'paciente[cpf]', with: '70383167450'
  fill_in 'paciente[telefone]', with: '87998165631'
  fill_in 'paciente[email]', with: 'rodrigo.leandro.zx@gmail.com'
  fill_in 'paciente[endereco_paciente_attributes][cep]', with: '55298165'
  fill_in 'paciente[endereco_paciente_attributes][cidade]', with: 'Garanhuns'
  fill_in 'paciente[endereco_paciente_attributes][bairro]', with: '///////////////////'
  fill_in 'paciente[endereco_paciente_attributes][logradouro]', with: '///////////////////'
  fill_in 'paciente[endereco_paciente_attributes][complemento]', with: '///////////////////'
  click_button 'Criar Paciente'
  expect(page).to have_content('Paciente criado com sucesso.')

  visit '/admin/1/dentista/new'
  fill_in 'dentistum[nome]', with: 'Rodrigo'
  fill_in 'dentistum[CPF]', with: '70383167450'
  fill_in 'dentistum[telefone]', with: 87998165631
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: '123456789'
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: '08:00'
  fill_in 'dentistum[horaTermino]', with: "16:00"
  click_button 'Criar Dentista'
  expect(page).to have_content('Dentista foi Criado com sucesso')

  visit '/consulta/new'
  fill_in 'consultum[data]', with: '22/03/2023'
  fill_in 'consultum[horario]', with: '12:41'
  select 'Rodrigo Leandro dos Santos', from: 'consultum[paciente_id]'
  select 'Rodrigo', from: 'consultum[dentistum_id]'
  click_button 'Criar Consultum'
  visit '/consulta'
  expect(page).to have_content('Rodrigo Leandro dos Santos')

  visit '/consulta/1/relatorio_consulta/new'
  check 'relatorio_consultum[presente]'
  fill_in 'relatorio_consultum[comentario]', with: "paciente com febre"
  click_button 'Criar Relatorio consultum'
  visit 'consulta/1/relatorio_consulta'


end

When('eu clico em ver relatorio de consulta') do
  click_link 'Mostrar este relatorio de consulta'
end

Then('eu vejo o relatorio_consulta e suas informações') do
  expect(page).to have_content('Comentario:')
  expect(page).to have_content('Presente:')
end

Then('Eu vejo uma mensagem de relatorio_consulta criado com sucesso') do
  expect(page).to have_content("Relatorio de consulta foi Criado com sucesso")
end


When('eu preecho um relatorio_consulta com a checkbox de presença marcada') do
  check 'relatorio_consultum[presente]'
  fill_in 'relatorio_consultum[comentario]', with: " "
end

When('eu preecho um relatorio_consulta com comentario {string} e marco a checkbox de presença') do |comentario|
  check 'relatorio_consultum[presente]'
  fill_in 'relatorio_consultum[comentario]', with: comentario
end
