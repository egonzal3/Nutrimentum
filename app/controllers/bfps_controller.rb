class BfpsController < ApplicationController
  def index
    @q = Bfp.ransack(params[:q])
    @bfps = @q.result(:distinct => true).includes(:recipes, :recip2, :recip3, :recip4, :recip5, :nutrients_bfps, :meals, :serving_size_bfps).page(params[:page]).per(10)

    render("bfp_templates/index.html.erb")
  end

  def show
    @serving_size_bfp = ServingSizeBfp.new
    @meal = Meal.new
    @nutrients_bfp = NutrientsBfp.new
    @recipe = Recipe.new
    @bfp = Bfp.find(params.fetch("id_to_display"))

    render("bfp_templates/show.html.erb")
  end

  def new_form
    @bfp = Bfp.new

    render("bfp_templates/new_form.html.erb")
  end

  def create_row
    @bfp = Bfp.new

    @bfp.long_name = params.fetch("long_name")
    @bfp.data_source = params.fetch("data_source")
    @bfp.gtin_upc = params.fetch("gtin_upc")
    @bfp.manufacturer = params.fetch("manufacturer")
    @bfp.ingredients_english = params.fetch("ingredients_english")
    @bfp.ndb_no = params.fetch("ndb_no")

    if @bfp.valid?
      @bfp.save

      redirect_back(:fallback_location => "/bfps", :notice => "Bfp created successfully.")
    else
      render("bfp_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @bfp = Bfp.find(params.fetch("prefill_with_id"))

    render("bfp_templates/edit_form.html.erb")
  end

  def update_row
    @bfp = Bfp.find(params.fetch("id_to_modify"))

    @bfp.long_name = params.fetch("long_name")
    @bfp.data_source = params.fetch("data_source")
    @bfp.gtin_upc = params.fetch("gtin_upc")
    @bfp.manufacturer = params.fetch("manufacturer")
    @bfp.ingredients_english = params.fetch("ingredients_english")
    @bfp.ndb_no = params.fetch("ndb_no")

    if @bfp.valid?
      @bfp.save

      redirect_to("/bfps/#{@bfp.id}", :notice => "Bfp updated successfully.")
    else
      render("bfp_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @bfp = Bfp.find(params.fetch("id_to_remove"))

    @bfp.destroy

    redirect_to("/bfps", :notice => "Bfp deleted successfully.")
  end
end
