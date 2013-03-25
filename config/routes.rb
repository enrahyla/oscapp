Oscapp::Application.routes.draw do
  
  resources :diaries

  resources :authors

  resources :author_sessions,
            only: [ :new, :create, :destroy ]

  match 'login' => 'author_sessions#new'
  match 'logout' => 'author_sessions#destroy'


  root :to => 'welcome#index'

  get 'welcome/index'
  get 'welcome/aboutus'
  get 'welcome/contactus'
  get 'welcome/faq'
  get 'welcome/social'
  get 'welcome/racingteam'
  get 'welcome/lessons'
  

  resources :events
end
