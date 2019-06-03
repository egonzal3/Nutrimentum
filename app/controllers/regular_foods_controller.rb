class RegularFoodsController < ApplicationController
  def index
    @q = RegularFood.ransack(params[:q])
    @regular_foods = @q.result(:distinct => true).includes(:nut_data_foods, :meals, :recipes, :recipes4, :recipes3, :recipes2, :recipes1).page(params[:page]).per(10)

    render("regular_food_templates/index.html.erb")
  end

  def show
    @recipe = Recipe.new
    @meal = Meal.new
    @nut_data_food = NutDataFood.new
    @regular_food = RegularFood.find(params.fetch("id_to_display"))

    render("regular_food_templates/show.html.erb")
  end

  def new_form
    @regular_food = RegularFood.new

    render("regular_food_templates/new_form.html.erb")
  end

  def create_row
    @regular_food = RegularFood.new

    @regular_food.ndb_no = params.fetch("ndb_no")
    @regular_food.fdgrp_cd = params.fetch("fdgrp_cd")
    @regular_food.long_desc = params.fetch("long_desc")
    @regular_food.shrt_desc = params.fetch("shrt_desc")
    @regular_food.comname = params.fetch("comname")
    @regular_food.manufacname = params.fetch("manufacname")
    @regular_food.survey = params.fetch("survey")
    @regular_food.ref_desc = params.fetch("ref_desc")
    @regular_food.refuse = params.fetch("refuse")
    @regular_food.sciname = params.fetch("sciname")
    @regular_food.n_factor = params.fetch("n_factor")
    @regular_food.pro_factor = params.fetch("pro_factor")
    @regular_food.fat_factor = params.fetch("fat_factor")
    @regular_food.cho_factor = params.fetch("cho_factor")

    if @regular_food.valid?
      @regular_food.save

      redirect_back(:fallback_location => "/regular_foods", :notice => "Regular food created successfully.")
    else
      render("regular_food_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @regular_food = RegularFood.find(params.fetch("prefill_with_id"))

    render("regular_food_templates/edit_form.html.erb")
  end

  def update_row
    @regular_food = RegularFood.find(params.fetch("id_to_modify"))

    @regular_food.ndb_no = params.fetch("ndb_no")
    @regular_food.fdgrp_cd = params.fetch("fdgrp_cd")
    @regular_food.long_desc = params.fetch("long_desc")
    @regular_food.shrt_desc = params.fetch("shrt_desc")
    @regular_food.comname = params.fetch("comname")
    @regular_food.manufacname = params.fetch("manufacname")
    @regular_food.survey = params.fetch("survey")
    @regular_food.ref_desc = params.fetch("ref_desc")
    @regular_food.refuse = params.fetch("refuse")
    @regular_food.sciname = params.fetch("sciname")
    @regular_food.n_factor = params.fetch("n_factor")
    @regular_food.pro_factor = params.fetch("pro_factor")
    @regular_food.fat_factor = params.fetch("fat_factor")
    @regular_food.cho_factor = params.fetch("cho_factor")

    if @regular_food.valid?
      @regular_food.save

      redirect_to("/regular_foods/#{@regular_food.id}", :notice => "Regular food updated successfully.")
    else
      render("regular_food_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @regular_food = RegularFood.find(params.fetch("id_to_remove"))

    @regular_food.destroy

    redirect_to("/regular_foods", :notice => "Regular food deleted successfully.")
  end
end
