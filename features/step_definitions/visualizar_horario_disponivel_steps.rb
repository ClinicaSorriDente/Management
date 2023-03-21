Given('estou na tela de agendar consulta medica') do
  visit new_consultum_path
end

Then('Eu vejo {string}') do |nome|
  # Espero a página do paciente ser carregado
  expect(page).to have_content(nome)
end
