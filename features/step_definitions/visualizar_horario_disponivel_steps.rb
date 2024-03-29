Given('estou na tela de agendar consulta') do
  visit new_consultum_path
end

Then('Eu vejo a mensagem {string}') do |nome|
  visit 'pacientes/new'
  fill_in 'paciente[nome]', with: 'Jonatas dos Santos'
  fill_in 'paciente[nascimento]', with: "2001-04-25"
  fill_in 'paciente[cpf]', with: '23586731108'
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
  fill_in 'dentistum[nome]', with: 'Rodolfo Melo'
  fill_in 'dentistum[CPF]', with: '22156442738'
  fill_in 'dentistum[telefone]', with: 87998165631
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: '123456789'
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: '08:00'
  fill_in 'dentistum[horaTermino]', with: "16:00"
  click_button 'Criar Dentista'
  expect(page).to have_content('Dentista foi Criado com sucesso')

  visit '/consulta/new'
  fill_in 'consultum[data]', with: '22/04/2023'
  fill_in 'consultum[horario]', with: '12:41'
  select 'Jonatas dos Santos', from: 'consultum[paciente_id]'
  select 'Rodolfo Melo', from: 'consultum[dentistum_id]'
  click_button 'Criar Consultum'

  visit new_consultum_path
  expect(page).to have_content(nome)
end

Given('estou na tela de consulta') do
  visit '/consulta'
end

When('eu clico para criar nova consulta') do
  click_link 'New consultum'
end

Then('eu vejo que {string} esta disponivel') do |string|
  expect(page).to have_no_content(string)
end

When('eu vejo que {string} esta indisponivel') do |string|
  visit 'pacientes/new'
  fill_in 'paciente[nome]', with: 'Antonio dos Santos'
  fill_in 'paciente[nascimento]', with: "2001-04-25"
  fill_in 'paciente[cpf]', with: '66838170817'
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
  fill_in 'dentistum[nome]', with: 'Aberlardo Silva'
  fill_in 'dentistum[CPF]', with: '97071578605'
  fill_in 'dentistum[telefone]', with: 87998165631
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: '123456789'
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: '08:00'
  fill_in 'dentistum[horaTermino]', with: "16:00"
  click_button 'Criar Dentista'
  expect(page).to have_content('Dentista foi Criado com sucesso')

  visit '/consulta/new'
  fill_in 'consultum[data]', with: '22/04/2023'
  fill_in 'consultum[horario]', with: string
  select 'Antonio dos Santos', from: 'consultum[paciente_id]'
  select 'Aberlardo Silva', from: 'consultum[dentistum_id]'
  click_button 'Criar Consultum'
  visit '/consulta/new'
  expect(page).to have_content(string)
end

Then('eu vejo uma consulta com horario {string}') do |string|
  visit 'pacientes/new'
  fill_in 'paciente[nome]', with: 'Rogerio Vilela'
  fill_in 'paciente[nascimento]', with: "2001-04-25"
  fill_in 'paciente[cpf]', with: '73451068290'
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
  fill_in 'dentistum[nome]', with: 'Sandra Alba'
  fill_in 'dentistum[CPF]', with: '88867476165'
  fill_in 'dentistum[telefone]', with: '87998165631'
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: '123456789'
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: '08:00'
  fill_in 'dentistum[horaTermino]', with: "16:00"
  click_button 'Criar Dentista'
  expect(page).to have_content('Dentista foi Criado com sucesso')

  visit '/consulta/new'
  fill_in 'consultum[data]', with: '25/04/2023'
  fill_in 'consultum[horario]', with: string
  select 'Rogerio Vilela', from: 'consultum[paciente_id]'
  select 'Sandra Alba', from: 'consultum[dentistum_id]'
  click_button 'Criar Consultum'
  expect(page).to have_content(string)
end

When('eu clico para excluir esta consulta') do
  click_button 'Destroy this consultum'
end


When('eu nao vejo uma consulta com horario {string}') do |string|
  expect(page).to have_no_content(string)
end

When('eu clico para criar uma nova consulta') do
  click_link 'New consultum'
end

When('eu vejo que agora {string} esta indisponivel') do |string|
  visit 'pacientes/new'
  fill_in 'paciente[nome]', with: 'Rogerio Lacerda'
  fill_in 'paciente[nascimento]', with: "2001-04-25"
  fill_in 'paciente[cpf]', with: '44221640316'
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
  fill_in 'dentistum[nome]', with: 'Sandra'
  fill_in 'dentistum[CPF]', with: '73611583316'
  fill_in 'dentistum[telefone]', with: '87998165631'
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: '123456789'
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: '08:00'
  fill_in 'dentistum[horaTermino]', with: "16:00"
  click_button 'Criar Dentista'
  expect(page).to have_content('Dentista foi Criado com sucesso')

  visit '/consulta/new'
  fill_in 'consultum[data]', with: '22/03/2023'
  fill_in 'consultum[horario]', with: string
  select 'Rogerio Lacerda', from: 'consultum[paciente_id]'
  select 'Sandra', from: 'consultum[dentistum_id]'
  click_button 'Criar Consultum'
end