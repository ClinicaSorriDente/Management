Given('eu estou na pagina de dentista') do
  visit '/admin/1/dentista/new'
  expect(page).to have_content('Novo dentista')
end

Given('eu vejo um dentista com cpf {string}') do |cpf|
  fill_in 'dentistum[nome]', with: 'Rodrigo leandro'
  fill_in 'dentistum[CPF]', with: cpf
  fill_in 'dentistum[telefone]', with: 87998165631
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: '123456789'
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: '08:00'
  fill_in 'dentistum[horaTermino]', with: "16:00"
  click_button 'Criar Dentista'
  click_link 'Ver este dentista'
  expect(page).to have_content(cpf)
end

When('eu clico em remover o dentista') do
  click_button 'Destruir este dentista'
end

Then('eu vejo uma mensagem que o dentista com cpf {string} foi removido') do |cpf|
  expect(page).to have_content('Dentista excluido com sucesso')
  expect(page).to have_no_content(cpf)
end

Given('eu estou na pagina de admin') do
  visit 'login'
  fill_in 'usuario', with: 'Admin_padrao'
  fill_in 'senha', with: '12345'
  click_button 'login'
  expect(page).to have_content("Bem vindo, Admin_padrao!")
end

When('eu clico em visualizar dentistas') do
  click_link 'visualizar dentistas'
end

Then('eu vejo todos os dentistas e suas informaçoes') do
  expect(page).to have_content("Dentistas")
end

Given('eu estou na pagina de criar dentista') do
  visit 'admin/1/dentista/new'
  expect(page).to have_content("Novo dentista")
end

When('clico em criar dentista') do
  click_button 'Criar Dentista'
end

Then('Eu vejo uma mensagem de dentista invalido') do
  expect(page).to have_content('error prohibited this dentistum from being saved:')
end

When('eu preecho um dentista com cpf {string}') do |cpf|
  fill_in 'dentistum[nome]', with: 'Rodrigo leandro'
  fill_in 'dentistum[CPF]', with: cpf
  fill_in 'dentistum[telefone]', with: 87998165631
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: '123456789'
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: "08:00"
  fill_in 'dentistum[horaTermino]', with: "16:00"
end

When('eu preecho um dentista com cro {string}') do |cro|
  fill_in 'dentistum[nome]', with: 'Rodrigo leandro'
  fill_in 'dentistum[CPF]', with: '70383167450'
  fill_in 'dentistum[telefone]', with: 87998165631
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: cro
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: "08:00"
  fill_in 'dentistum[horaTermino]', with: "16:00"
end



When('eu preecho um dentista com telefone {string}') do |telefone|
  fill_in 'dentistum[nome]', with: 'Rodrigo leandro'
  fill_in 'dentistum[CPF]', with: '70383167450'
  fill_in 'dentistum[telefone]', with: telefone
  fill_in 'dentistum[especializacao]', with: 'Dentista'
  fill_in 'dentistum[CRO]', with: '123456789'
  fill_in 'dentistum[data]', with: '2023-10-05'
  fill_in 'dentistum[horaInicio]', with: "08:00"
  fill_in 'dentistum[horaTermino]', with: "16:00"
end



