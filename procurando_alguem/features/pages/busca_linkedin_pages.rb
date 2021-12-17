class HomePageCadastro < SitePrism::Page
  include Capybara::DSL

  # Informaçoes pessoais

  element :email, "#session_key"
  element :senha, "#session_password"
  element :bt_entrar, ".sign-in-form__submit-button"
  element :procurar, ".search-global-typeahead__input"
  element :cayro, "(//span[contains(@class,'search-global-typeahead__hit-text t-16')])[1]"

  #metodos

  def login
    email.set "brunohenriquetec@gmail.com"
    senha.set "apolo123"
    bt_entrar.click
  end

  def procurar_pessoas
    procurar.set "cayro correia"
    cayro.click

    sleep 3
  end
end
