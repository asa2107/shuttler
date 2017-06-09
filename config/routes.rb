Rails.application.routes.draw do


  # Routes for the Match resource:
  # CREATE
  get "/matches/new", :controller => "matches", :action => "new"
  get "/create_match/:acceptor_id/:listing_id", :controller => "matches", :action => "create"

  # READ
  get "/matches", :controller => "matches", :action => "index"
  get "/matches/:id", :controller => "matches", :action => "show"

  # UPDATE
  get "/matches/:id/edit", :controller => "matches", :action => "edit"
  post "/update_match/:id", :controller => "matches", :action => "update"

  # DELETE
  get "/delete_match/:id", :controller => "matches", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Listing resource:
  # CREATE
  get "/listings/new", :controller => "listings", :action => "new"
  post "/create_listing", :controller => "listings", :action => "create"

  # READ
  get "/listings", :controller => "listings", :action => "index"
  get "/listings/:id", :controller => "listings", :action => "show"

  # UPDATE
  get "/listings/:id/edit", :controller => "listings", :action => "edit"
  post "/update_listing/:id", :controller => "listings", :action => "update"

  # DELETE
  get "/delete_listing/:id", :controller => "listings", :action => "destroy"
  #------------------------------

  devise_for :users
   root to: "listings#index"
   get "/users", :controller => "users", :action => "index"
   get "/users/:id", :controller => "users", :action => "show"
   get "/my_likes", :controller => "users", :action => "mylikes"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
