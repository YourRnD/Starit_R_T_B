Rails.application.routes.draw do
   
  namespace :api do
    namespace :v1 do
      resources :feedbacks, only: :index 
      resources :customers, only: %i[index create destroy]
    end  
  end 
end
