Rails.application.routes.draw do
  LOCALES = /en|pt-BR/
  root 'home#index'

  scope '(:locale)', locale: LOCALES do
    resources :rooms
    resources :users
  end
  match '/:locale': 'home#index', locale: LOCALES
end
