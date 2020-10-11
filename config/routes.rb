Rails.application.routes.draw do
  devise_for :users

  root "questionnaires#top"
  get "questionnaires/about" => "questionnaires#about", as: 'questionnaires_about'
  patch "users/unsubscribe" => "users#unsubscribe", as: 'users_unsubscribe'
  get "users/withdrow" => "users#withdraw", as: 'users_withdraw'
  resources :users, only: [:edit, :update, :show]
  resources :requests, only: [:create, :destroy]
  resources :questionnaires, only: [:create]
  resources :results, only: [:index, :show]

  get "questionnaires/thanks" => "questionnaires#thanks", as: 'questionnaires_thanks'

  get "requests/confirm" => "requests#confirm", as: 'requests_confirm'
  get "questionnaires/confirm" => "questionnaires#confirm", as: 'questionnaires_confirm'
  get "results/confirm" => "results#confirm", as: 'results_confirm'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
