Rails.application.routes.draw do
  scope '(:locale)', locale: /en|pt-BR/ do
    resources :rooms
    resources :users
  end
  get '/:locale' => 'home#index', :locale => /en|pt-BR/
  root 'home#index'
end
