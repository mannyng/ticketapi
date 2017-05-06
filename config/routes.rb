Rails.application.routes.draw do
  devise_for :users, only: []
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

         resource :login, only: [:create], controller: :sessions
         resources :users, :flight_tickets, :flights
         
      resources :customers
   resources :cards do  
     resource :tasks
   end

     resources :prospects, :jobs do
       resources :job_seekings
     end  
 
   resources :companies, :jobs do
     resources :job_offerings
   end

end
