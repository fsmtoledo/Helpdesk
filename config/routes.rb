Rails.application.routes.draw do
  get "welcome/sobremim", to: "welcome#sobremim"
  get "welcome/contato", to: "welcome#contato"
  get "welcome/portifolio", to: "welcome#portifolio"
  get 'control_users/index'
  devise_for :members
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  resources :produtos
  resources :descricaos
  resources :users
    get "produtos/busca", to: "produtos#busca", as: :busca_produto
    resources :produtos, only: [:new, :create, :edit, :destroy]
end