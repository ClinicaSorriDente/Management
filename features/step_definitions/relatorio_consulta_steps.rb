Given('eu estou na pagina de relatorio_consulta') do
  visit '/consulta/4/relatorio_consulta'
end

Given('eu vejo um relatorio_consulta com comentario {string}') do |comentario|
  visit '/consulta/4/relatorio_consulta'
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
  visit '/consulta/5/relatorio_consulta/new'
  expect(page).to have_content("Novo relatorio de consulta")
end

When('clico em criar relatorio_consulta') do
  click_button 'Criar Relatorio consultum'
end

Then('Eu vejo uma mensagem de relatorio_consulta invalido') do
  expect(page).to have_content('error prohibited this relatorio_consultum from being saved:')
end

Given('eu estou na pagina de consulta') do
  visit '/consulta/4/relatorio_consulta/'
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
