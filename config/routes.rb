Rails.application.routes.draw do
  resources :specialties, except: [:new, :edit]
  resources :specialties, except: [:new, :edit]
  resources :miscellaneous_pricings, except: [:new, :edit]
  resources :rentals, except: [:new, :edit]
  resources :vacations, except: [:new, :edit]
  resources :trainings, except: [:new, :edit]
  resources :divings, except: [:new, :edit]
  resources :users, except: [:new, :edit]
  match 'vacations', to: 'vacations#create', via: [:options]
   
  #match "*all" => "application#cors_preflight_check", :constraints => { :method => "OPTIONS" }
end
