Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "bfps#index"
  # Routes for the Nut def resource:

  # CREATE
  get("/nut_defs/new", { :controller => "nut_defs", :action => "new_form" })
  post("/create_nut_def", { :controller => "nut_defs", :action => "create_row" })

  # READ
  get("/nut_defs", { :controller => "nut_defs", :action => "index" })
  get("/nut_defs/:id_to_display", { :controller => "nut_defs", :action => "show" })

  # UPDATE
  get("/nut_defs/:prefill_with_id/edit", { :controller => "nut_defs", :action => "edit_form" })
  post("/update_nut_def/:id_to_modify", { :controller => "nut_defs", :action => "update_row" })

  # DELETE
  get("/delete_nut_def/:id_to_remove", { :controller => "nut_defs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Nut data food resource:

  # CREATE
  get("/nut_data_foods/new", { :controller => "nut_data_foods", :action => "new_form" })
  post("/create_nut_data_food", { :controller => "nut_data_foods", :action => "create_row" })
  post("/create_nut_data_food_from_nut_def", { :controller => "nut_data_foods", :action => "create_row_from_nut_def" })
  post("/create_nut_data_food_from_regular_food", { :controller => "nut_data_foods", :action => "create_row_from_regular_food" })

  # READ
  get("/nut_data_foods", { :controller => "nut_data_foods", :action => "index" })
  get("/nut_data_foods/:id_to_display", { :controller => "nut_data_foods", :action => "show" })

  # UPDATE
  get("/nut_data_foods/:prefill_with_id/edit", { :controller => "nut_data_foods", :action => "edit_form" })
  post("/update_nut_data_food/:id_to_modify", { :controller => "nut_data_foods", :action => "update_row" })

  # DELETE
  get("/delete_nut_data_food/:id_to_remove", { :controller => "nut_data_foods", :action => "destroy_row" })
  get("/delete_nut_data_food_from_nutr_fact/:id_to_remove", { :controller => "nut_data_foods", :action => "destroy_row_from_nutr_fact" })
  get("/delete_nut_data_food_from_product/:id_to_remove", { :controller => "nut_data_foods", :action => "destroy_row_from_product" })

  #------------------------------

  # Routes for the Regular food resource:

  # CREATE
  get("/regular_foods/new", { :controller => "regular_foods", :action => "new_form" })
  post("/create_regular_food", { :controller => "regular_foods", :action => "create_row" })

  # READ
  get("/regular_foods", { :controller => "regular_foods", :action => "index" })
  get("/regular_foods/:id_to_display", { :controller => "regular_foods", :action => "show" })

  # UPDATE
  get("/regular_foods/:prefill_with_id/edit", { :controller => "regular_foods", :action => "edit_form" })
  post("/update_regular_food/:id_to_modify", { :controller => "regular_foods", :action => "update_row" })

  # DELETE
  get("/delete_regular_food/:id_to_remove", { :controller => "regular_foods", :action => "destroy_row" })

  #------------------------------

  # Routes for the Serving size bfp resource:

  # CREATE
  get("/serving_size_bfps/new", { :controller => "serving_size_bfps", :action => "new_form" })
  post("/create_serving_size_bfp", { :controller => "serving_size_bfps", :action => "create_row" })
  post("/create_serving_size_bfp_from_bfp", { :controller => "serving_size_bfps", :action => "create_row_from_bfp" })

  # READ
  get("/serving_size_bfps", { :controller => "serving_size_bfps", :action => "index" })
  get("/serving_size_bfps/:id_to_display", { :controller => "serving_size_bfps", :action => "show" })

  # UPDATE
  get("/serving_size_bfps/:prefill_with_id/edit", { :controller => "serving_size_bfps", :action => "edit_form" })
  post("/update_serving_size_bfp/:id_to_modify", { :controller => "serving_size_bfps", :action => "update_row" })

  # DELETE
  get("/delete_serving_size_bfp/:id_to_remove", { :controller => "serving_size_bfps", :action => "destroy_row" })
  get("/delete_serving_size_bfp_from_product/:id_to_remove", { :controller => "serving_size_bfps", :action => "destroy_row_from_product" })

  #------------------------------

  # Routes for the Nutrients bfp resource:

  # CREATE
  get("/nutrients_bfps/new", { :controller => "nutrients_bfps", :action => "new_form" })
  post("/create_nutrients_bfp", { :controller => "nutrients_bfps", :action => "create_row" })
  post("/create_nutrients_bfp_from_bfp", { :controller => "nutrients_bfps", :action => "create_row_from_bfp" })

  # READ
  get("/nutrients_bfps", { :controller => "nutrients_bfps", :action => "index" })
  get("/nutrients_bfps/:id_to_display", { :controller => "nutrients_bfps", :action => "show" })

  # UPDATE
  get("/nutrients_bfps/:prefill_with_id/edit", { :controller => "nutrients_bfps", :action => "edit_form" })
  post("/update_nutrients_bfp/:id_to_modify", { :controller => "nutrients_bfps", :action => "update_row" })

  # DELETE
  get("/delete_nutrients_bfp/:id_to_remove", { :controller => "nutrients_bfps", :action => "destroy_row" })
  get("/delete_nutrients_bfp_from_product/:id_to_remove", { :controller => "nutrients_bfps", :action => "destroy_row_from_product" })

  #------------------------------

  # Routes for the Meal resource:

  # CREATE
  get("/meals/new", { :controller => "meals", :action => "new_form" })
  post("/create_meal", { :controller => "meals", :action => "create_row" })
  post("/create_meal_from_regular_food", { :controller => "meals", :action => "create_row_from_regular_food" })
  post("/create_meal_from_recipe", { :controller => "meals", :action => "create_row_from_recipe" })
  post("/create_meal_from_bfp", { :controller => "meals", :action => "create_row_from_bfp" })

  # READ
  get("/meals", { :controller => "meals", :action => "index" })
  get("/meals/:id_to_display", { :controller => "meals", :action => "show" })

  # UPDATE
  get("/meals/:prefill_with_id/edit", { :controller => "meals", :action => "edit_form" })
  post("/update_meal/:id_to_modify", { :controller => "meals", :action => "update_row" })

  # DELETE
  get("/delete_meal/:id_to_remove", { :controller => "meals", :action => "destroy_row" })
  get("/delete_meal_from_reg_food/:id_to_remove", { :controller => "meals", :action => "destroy_row_from_reg_food" })
  get("/delete_meal_from_plate/:id_to_remove", { :controller => "meals", :action => "destroy_row_from_plate" })
  get("/delete_meal_from_meal_bfp/:id_to_remove", { :controller => "meals", :action => "destroy_row_from_meal_bfp" })
  get("/delete_meal_from_user/:id_to_remove", { :controller => "meals", :action => "destroy_row_from_user" })

  #------------------------------

  # Routes for the Recipe resource:

  # CREATE
  get("/recipes/new", { :controller => "recipes", :action => "new_form" })
  post("/create_recipe", { :controller => "recipes", :action => "create_row" })
  post("/create_recipe_from_regular_food", { :controller => "recipes", :action => "create_row_from_regular_food" })
  post("/create_recipe_from_bfp", { :controller => "recipes", :action => "create_row_from_bfp" })

  # READ
  get("/recipes", { :controller => "recipes", :action => "index" })
  get("/recipes/:id_to_display", { :controller => "recipes", :action => "show" })

  # UPDATE
  get("/recipes/:prefill_with_id/edit", { :controller => "recipes", :action => "edit_form" })
  post("/update_recipe/:id_to_modify", { :controller => "recipes", :action => "update_row" })

  # DELETE
  get("/delete_recipe/:id_to_remove", { :controller => "recipes", :action => "destroy_row" })
  get("/delete_recipe_from_ingredie1/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_ingredie1" })
  get("/delete_recipe_from_ingredie2/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_ingredie2" })
  get("/delete_recipe_from_ingredie3/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_ingredie3" })
  get("/delete_recipe_from_ingredie4/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_ingredie4" })
  get("/delete_recipe_from_ingredie5/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_ingredie5" })
  get("/delete_recipe_from_ingred5/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_ingred5" })
  get("/delete_recipe_from_ingred4/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_ingred4" })
  get("/delete_recipe_from_ingred3/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_ingred3" })
  get("/delete_recipe_from_ingred2/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_ingred2" })
  get("/delete_recipe_from_ingred1/:id_to_remove", { :controller => "recipes", :action => "destroy_row_from_ingred1" })

  #------------------------------

  # Routes for the Bfp resource:

  # CREATE
  get("/bfps/new", { :controller => "bfps", :action => "new_form" })
  post("/create_bfp", { :controller => "bfps", :action => "create_row" })

  # READ
  get("/bfps", { :controller => "bfps", :action => "index" })
  get("/bfps/:id_to_display", { :controller => "bfps", :action => "show" })

  # UPDATE
  get("/bfps/:prefill_with_id/edit", { :controller => "bfps", :action => "edit_form" })
  post("/update_bfp/:id_to_modify", { :controller => "bfps", :action => "update_row" })

  # DELETE
  get("/delete_bfp/:id_to_remove", { :controller => "bfps", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
