InternBidding::Application.routes.draw do

  get "/login" => 'sessions#new'
  get "/authenticate" => 'sessions#create'
  get "/logout" => 'sessions#destroy'

  root 'internships#index'

  get "/users/new" => 'users#new'
  get "/users/create" => 'users#create'
  get "/users/:user_id/show" => 'users#show'

  # Internship-related URLs

  # CREATE
  get "/internship/new" => "internships#new"
  get "/internship/create" => "internships#create"

  # READ
  get "/internship" => 'internships#index'
  get "/internship/:internship_id/show" => "internships#show"

  # UPDATE
  get "/internship/:internship_id/edit" => "internships#edit"
  get "/internship/:internship_id/update" => "internships#update"

  # DELETE
  get "/internship/:product_id/delete" => "internships#destroy"


  # Review-related URLs

  get "/reviews/create" => 'reviews#create'



end
