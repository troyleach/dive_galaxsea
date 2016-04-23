Rails.application.routes.draw do
  resources :vacations, except: [:new, :edit]
  resources :trainings, except: [:new, :edit]
  resources :divings, except: [:new, :edit]
  resources :users, except: [:new, :edit]
  #match "*all" => "application#cors_preflight_check", :constraints => { :method => "OPTIONS" }
end
