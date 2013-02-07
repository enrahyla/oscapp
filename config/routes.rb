Oscapp::Application.routes.draw do
  
  resources :diaries


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
