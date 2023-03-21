Given('estou na tela de agendar consulta') do
  visit new_consultum_path
end

Then('Eu vejo {string}') do |nome|
  # Espero a página do consulta
  expect(page).to have_content(nome)
end
