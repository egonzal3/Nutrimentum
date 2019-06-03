class MealsController < ApplicationController
  before_action :current_user_must_be_meal_user, :only => [:show, :edit_form, :update_row, :destroy_row]

  def current_user_must_be_meal_user
    meal = Meal.find(params["id_to_display"] || params["prefill_with_id"] || params["id_to_modify"] || params["id_to_remove"])

    unless current_user == meal.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = current_user.meals.ransack(params[:q])
    @meals = @q.result(:distinct => true).includes(:user, :meal_bfp, :plate, :reg_food).page(params[:page]).per(10)

    render("meal_templates/index.html.erb")
  end

  def show
    @meal = Meal.find(params.fetch("id_to_display"))

    render("meal_templates/show.html.erb")
  end

  def new_form
    @meal = Meal.new

    render("meal_templates/new_form.html.erb")
  end

  def create_row
    @meal = Meal.new

    @meal.eater = params.fetch("eater")
    @meal.food = params.fetch("food")

    if @meal.valid?
      @meal.save

      redirect_back(:fallback_location => "/meals", :notice => "Meal created successfully.")
    else
      render("meal_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_bfp
    @meal = Meal.new

    @meal.eater = params.fetch("eater")
    @meal.food = params.fetch("food")

    if @meal.valid?
      @meal.save

      redirect_to("/bfps/#{@meal.food}", notice: "Meal created successfully.")
    else
      render("meal_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_recipe
    @meal = Meal.new

    @meal.eater = params.fetch("eater")
    @meal.food = params.fetch("food")

    if @meal.valid?
      @meal.save

      redirect_to("/recipes/#{@meal.food}", notice: "Meal created successfully.")
    else
      render("meal_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_regular_food
    @meal = Meal.new

    @meal.eater = params.fetch("eater")
    @meal.food = params.fetch("food")

    if @meal.valid?
      @meal.save

      redirect_to("/regular_foods/#{@meal.food}", notice: "Meal created successfully.")
    else
      render("meal_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @meal = Meal.find(params.fetch("prefill_with_id"))

    render("meal_templates/edit_form.html.erb")
  end

  def update_row
    @meal = Meal.find(params.fetch("id_to_modify"))

    
    @meal.food = params.fetch("food")

    if @meal.valid?
      @meal.save

      redirect_to("/meals/#{@meal.id}", :notice => "Meal updated successfully.")
    else
      render("meal_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @meal = Meal.find(params.fetch("id_to_remove"))

    @meal.destroy

    redirect_to("/users/#{@meal.eater}", notice: "Meal deleted successfully.")
  end

  def destroy_row_from_meal_bfp
    @meal = Meal.find(params.fetch("id_to_remove"))

    @meal.destroy

    redirect_to("/bfps/#{@meal.food}", notice: "Meal deleted successfully.")
  end

  def destroy_row_from_plate
    @meal = Meal.find(params.fetch("id_to_remove"))

    @meal.destroy

    redirect_to("/recipes/#{@meal.food}", notice: "Meal deleted successfully.")
  end

  def destroy_row_from_reg_food
    @meal = Meal.find(params.fetch("id_to_remove"))

    @meal.destroy

    redirect_to("/regular_foods/#{@meal.food}", notice: "Meal deleted successfully.")
  end

  def destroy_row
    @meal = Meal.find(params.fetch("id_to_remove"))

    @meal.destroy

    redirect_to("/meals", :notice => "Meal deleted successfully.")
  end
end
