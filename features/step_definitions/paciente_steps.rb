# CAMPOS VAZIOS
Given('eu estou na tela de criar novo paciente') do
  visit 'pacientes/new'
  expect(page).to have_content("New paciente")
end

When('eu preencho os campos com nome {string}, nascimento {string}, cpf {string}, telefone {string},  email {string}, cep {string}, cidade {string}, bairro {string}, logradouro {string} e complemento {string}') do |nome, nascimento, cpf, telefone, email, cep, cidade, bairro, logradouro, complemento|
  fill_in 'paciente[nome]', with: nome
  fill_in 'paciente[nascimento]', with: nascimento
  fill_in 'paciente[cpf]', with: cpf
  fill_in 'paciente[telefone]', with: telefone
  fill_in 'paciente[email]', with: email
  fill_in 'paciente[endereco_paciente_attributes][cep]', with: cep
  fill_in 'paciente[endereco_paciente_attributes][cidade]', with: cidade
  fill_in 'paciente[endereco_paciente_attributes][bairro]', with: bairro
  fill_in 'paciente[endereco_paciente_attributes][logradouro]', with: logradouro
  fill_in 'paciente[endereco_paciente_attributes][complemento]', with: complemento
end

When('clico em Criar Paciente') do
  click_button 'Criar Paciente'
end

Then('eu vejo uma mensagem de erro informando que nao foi possivel criar paciente devido aos campos invalidos') do
  expect(page).to have_content('20 error prohibited this paciente from being saved:')
end



# CPF INEXISTENTE
When('eu preencho os campos com nome {string}, nascimento {string}, cpf {string}, telefone {string}, email {string}, cep {string}, cidade {string}, bairro {string}, logradouro {string} e complemento {string}') do |nome, nascimento, cpf, telefone, email, cep, cidade, bairro, logradouro, complemento|
  fill_in 'paciente[nome]', with: nome
  fill_in 'paciente[nascimento]', with: nascimento
  fill_in 'paciente[cpf]', with: cpf
  fill_in 'paciente[telefone]', with: telefone
  fill_in 'paciente[email]', with: email
  fill_in 'paciente[endereco_paciente_attributes][cep]', with: cep
  fill_in 'paciente[endereco_paciente_attributes][cidade]', with: cidade
  fill_in 'paciente[endereco_paciente_attributes][bairro]', with: bairro
  fill_in 'paciente[endereco_paciente_attributes][logradouro]', with: logradouro
  fill_in 'paciente[endereco_paciente_attributes][complemento]', with: complemento
end

Then('eu vejo uma mensagem de erro informando Cpf Inválido ou Inexistente') do
  expect(page).to have_content('1 error prohibited this paciente from being saved:
Cpf Inválido ou Inexistente')
end


# CADASTRO VALIDO
Then('eu vejo uma mensagem informando que a conta de Paciente foi criada com sucesso') do
  expect(page).to have_content('Paciente criado com sucesso')
end


# EDITAR PACIENTE
When('eu estou na tela de paciente') do
  visit 'pacientes/new'
end

When('eu vejo a conta com nome {string}, nascimento {string}, cpf {string}, telefone {string}, email {string}, cep {string}, cidade {string}, bairro {string}, logradouro {string} e complemento {string}') do |nome, nascimento, cpf, telefone, email, cep, cidade, bairro, logradouro, complemento|
  fill_in 'paciente[nome]', with: nome
  fill_in 'paciente[nascimento]', with: nascimento
  fill_in 'paciente[cpf]', with: cpf
  fill_in 'paciente[telefone]', with: telefone
  fill_in 'paciente[email]', with: email
  fill_in 'paciente[endereco_paciente_attributes][cep]', with: cep
  fill_in 'paciente[endereco_paciente_attributes][cidade]', with: cidade
  fill_in 'paciente[endereco_paciente_attributes][bairro]', with: bairro
  fill_in 'paciente[endereco_paciente_attributes][logradouro]', with: logradouro
  fill_in 'paciente[endereco_paciente_attributes][complemento]', with: complemento
  click_button 'Criar Paciente'
end

When('clico em editar este paciente') do
  click_link 'Edit this paciente'
end

When('eu edito a conta com nome {string}, telefone {string}') do |nome, telefone|
  fill_in 'paciente[nome]', with: nome
  fill_in 'paciente[telefone]', with: telefone
end

When('clico em Atualizar Paciente') do
  click_button 'Atualizar Paciente'
end

Then('eu vejo uma mensagem informando que a conta de Paciente foi atualizada com sucesso') do
  expect(page).to have_content('Paciente atualizado com sucesso')
end


# REMOVER PACIENTE
When('clico em Remover Paciente') do
  click_button 'Destroy this paciente'
end

When('eu vejo uma mensagem informando que a conta de Paciente foi deletada com sucesso') do
  expect(page).to have_content('Conta de paciente deletada com sucesso')
end
