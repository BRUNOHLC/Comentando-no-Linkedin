Dado("que o usuario na pagina iniciar") do
  visit "/"
end

Quando("faça o login com sucesso") do
  @home = HomePageCadastro.new
  @home.login
end

Quando("acessar a pagina de busca e buscar pela pessoa desejada") do
  @home.procurar_pessoas
end

Então("é verificada se ele está na pagina do perfil desejado") do
end
