# CAMPOS VAZIOS
Given('eu estou na tela de criar novo recepcionista') do
  visit 'recepcionista/new'
  expect(page).to have_content("New recepcionistum")
end

When('preencho os campos com nome {string}, credencial {string}, cpf {string}, telefone {string}, email {string}') do |nome, credencial, cpf, telefone, email|
  fill_in 'recepcionistum[nome]', with: nome
  fill_in 'recepcionistum[credencial]', with: credencial
  fill_in 'recepcionistum[cpf]', with: cpf
  fill_in 'recepcionistum[telefone]', with: telefone
  fill_in 'recepcionistum[email]', with: email
end

When('clico em Criar Recepcionista') do
  click_button 'Criar Recepcionistum'
end

Then('eu vejo uma mensagem de erro informando que nao foi possivel criar recepcionista devido aos campos invalidos') do
  expect(page).to have_content('11 error prohibited this recepcionistum from being saved:')
end



# CPF INEXISTENTE
Then('eu vejo uma mensagem informando o erro: Cpf Inválido ou Inexistente') do
  expect(page).to have_content('1 error prohibited this recepcionistum from being saved:
Cpf Inválido ou Inexistente')
end


# CADASTRO VALIDO
Then('eu vejo uma mensagem informando que a conta de Recepcionista foi criada com sucesso') do
  expect(page).to have_content('Recepcionista criado com sucesso')
end


# EDITAR RECEPCIONISTA
When('eu estou na tela de recepcionista') do
  visit 'recepcionista/new'
end

When('eu vejo a conta com nome {string}, credencial {string}, cpf {string}, telefone {string}, email {string}') do |nome, credencial, cpf, telefone, email|
  fill_in 'recepcionistum[nome]', with: nome
  fill_in 'recepcionistum[credencial]', with: credencial
  fill_in 'recepcionistum[cpf]', with: cpf
  fill_in 'recepcionistum[telefone]', with: telefone
  fill_in 'recepcionistum[email]', with: email
  click_button 'Criar Recepcionistum'
end

When('clico em editar este recepcionista') do
  click_link 'Edit this recepcionista'
end

When('edito a conta com nome {string}, telefone {string}') do |nome, telefone|
  fill_in 'recepcionistum[nome]', with: nome
  fill_in 'recepcionistum[telefone]', with: telefone
end

When('clico em Atualizar Recepcionista') do
  click_button 'Atualizar Recepcionistum'
end

Then('eu vejo uma mensagem informando que a conta de Recepcionista foi atualizada com sucesso') do
  expect(page).to have_content('Recepcionista atualizado com sucesso')
end



When('clico em Remover Recepcionista') do
  click_button 'Destroy this recepcionista'
end

When('eu vejo uma mensagem informando que a conta de Recepcionista foi deletada com sucesso') do
  expect(page).to have_content('Conta de recepcionista deletada com sucesso')
end
