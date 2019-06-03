class NutDataFoodsController < ApplicationController
  def index
    @q = NutDataFood.ransack(params[:q])
    @nut_data_foods = @q.result(:distinct => true).includes(:product, :nutr_fact).page(params[:page]).per(10)

    render("nut_data_food_templates/index.html.erb")
  end

  def show
    @nut_data_food = NutDataFood.find(params.fetch("id_to_display"))

    render("nut_data_food_templates/show.html.erb")
  end

  def new_form
    @nut_data_food = NutDataFood.new

    render("nut_data_food_templates/new_form.html.erb")
  end

  def create_row
    @nut_data_food = NutDataFood.new

    @nut_data_food.ndb_no = params.fetch("ndb_no")
    @nut_data_food.nutr_no = params.fetch("nutr_no")
    @nut_data_food.nutr_val = params.fetch("nutr_val")

    if @nut_data_food.valid?
      @nut_data_food.save

      redirect_back(:fallback_location => "/nut_data_foods", :notice => "Nut data food created successfully.")
    else
      render("nut_data_food_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_regular_food
    @nut_data_food = NutDataFood.new

    @nut_data_food.ndb_no = params.fetch("ndb_no")
    @nut_data_food.nutr_no = params.fetch("nutr_no")
    @nut_data_food.nutr_val = params.fetch("nutr_val")

    if @nut_data_food.valid?
      @nut_data_food.save

      redirect_to("/regular_foods/#{@nut_data_food.ndb_no}", notice: "NutDataFood created successfully.")
    else
      render("nut_data_food_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_nut_def
    @nut_data_food = NutDataFood.new

    @nut_data_food.ndb_no = params.fetch("ndb_no")
    @nut_data_food.nutr_no = params.fetch("nutr_no")
    @nut_data_food.nutr_val = params.fetch("nutr_val")

    if @nut_data_food.valid?
      @nut_data_food.save

      redirect_to("/nut_defs/#{@nut_data_food.nutr_no}", notice: "NutDataFood created successfully.")
    else
      render("nut_data_food_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @nut_data_food = NutDataFood.find(params.fetch("prefill_with_id"))

    render("nut_data_food_templates/edit_form.html.erb")
  end

  def update_row
    @nut_data_food = NutDataFood.find(params.fetch("id_to_modify"))

    @nut_data_food.ndb_no = params.fetch("ndb_no")
    @nut_data_food.nutr_no = params.fetch("nutr_no")
    @nut_data_food.nutr_val = params.fetch("nutr_val")

    if @nut_data_food.valid?
      @nut_data_food.save

      redirect_to("/nut_data_foods/#{@nut_data_food.id}", :notice => "Nut data food updated successfully.")
    else
      render("nut_data_food_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_product
    @nut_data_food = NutDataFood.find(params.fetch("id_to_remove"))

    @nut_data_food.destroy

    redirect_to("/regular_foods/#{@nut_data_food.ndb_no}", notice: "NutDataFood deleted successfully.")
  end

  def destroy_row_from_nutr_fact
    @nut_data_food = NutDataFood.find(params.fetch("id_to_remove"))

    @nut_data_food.destroy

    redirect_to("/nut_defs/#{@nut_data_food.nutr_no}", notice: "NutDataFood deleted successfully.")
  end

  def destroy_row
    @nut_data_food = NutDataFood.find(params.fetch("id_to_remove"))

    @nut_data_food.destroy

    redirect_to("/nut_data_foods", :notice => "Nut data food deleted successfully.")
  end
end
