Rails.application.routes.draw do
  resources :vacations, except: [:new, :edit]
  resources :trainings, except: [:new, :edit]
  resources :divings, except: [:new, :edit]
  resources :users, except: [:new, :edit]
  match 'vacations', to: 'vacations#create', via: [:options]
   
  #match "*all" => "application#cors_preflight_check", :constraints => { :method => "OPTIONS" }
end
