Rails.application.routes.draw do
  # Routes for the Follower resource:

  # CREATE
  get("/followers/new", { :controller => "followers", :action => "new_form" })
  post("/create_follower", { :controller => "followers", :action => "create_row" })

  # READ
  get("/followers", { :controller => "followers", :action => "index" })
  get("/followers/:id_to_display", { :controller => "followers", :action => "show" })

  # UPDATE
  get("/followers/:prefill_with_id/edit", { :controller => "followers", :action => "edit_form" })
  post("/update_follower/:id_to_modify", { :controller => "followers", :action => "update_row" })

  # DELETE
  get("/delete_follower/:id_to_remove", { :controller => "followers", :action => "destroy_row" })

  #------------------------------

  # Routes for the Fan resource:

  # CREATE
  get("/fans/new", { :controller => "fans", :action => "new_form" })
  post("/create_fan", { :controller => "fans", :action => "create_row" })

  # READ
  get("/fans", { :controller => "fans", :action => "index" })
  get("/fans/:id_to_display", { :controller => "fans", :action => "show" })

  # UPDATE
  get("/fans/:prefill_with_id/edit", { :controller => "fans", :action => "edit_form" })
  post("/update_fan/:id_to_modify", { :controller => "fans", :action => "update_row" })

  # DELETE
  get("/delete_fan/:id_to_remove", { :controller => "fans", :action => "destroy_row" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  get("/comments/new", { :controller => "comments", :action => "new_form" })
  post("/create_comment", { :controller => "comments", :action => "create_row" })

  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:id_to_display", { :controller => "comments", :action => "show" })

  # UPDATE
  get("/comments/:prefill_with_id/edit", { :controller => "comments", :action => "edit_form" })
  post("/update_comment/:id_to_modify", { :controller => "comments", :action => "update_row" })

  # DELETE
  get("/delete_comment/:id_to_remove", { :controller => "comments", :action => "destroy_row" })

  #------------------------------

  # Routes for the Photo resource:

  # CREATE
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  post("/create_photo", { :controller => "photos", :action => "create_row" })

  # READ
  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:id_to_display", { :controller => "photos", :action => "show" })

  # UPDATE
  get("/photos/:prefill_with_id/edit", { :controller => "photos", :action => "edit_form" })
  post("/update_photo/:id_to_modify", { :controller => "photos", :action => "update_row" })

  # DELETE
  get("/delete_photo/:id_to_remove", { :controller => "photos", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
