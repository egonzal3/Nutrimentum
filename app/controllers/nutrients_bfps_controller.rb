class NutrientsBfpsController < ApplicationController
  def index
    @q = NutrientsBfp.ransack(params[:q])
    @nutrients_bfps = @q.result(:distinct => true).includes(:product).page(params[:page]).per(10)

    render("nutrients_bfp_templates/index.html.erb")
  end

  def show
    @nutrients_bfp = NutrientsBfp.find(params.fetch("id_to_display"))

    render("nutrients_bfp_templates/show.html.erb")
  end

  def new_form
    @nutrients_bfp = NutrientsBfp.new

    render("nutrients_bfp_templates/new_form.html.erb")
  end

  def create_row
    @nutrients_bfp = NutrientsBfp.new

    @nutrients_bfp.ndb_no = params.fetch("ndb_no")
    @nutrients_bfp.nutrient_code = params.fetch("nutrient_code")
    @nutrients_bfp.nutrient_name = params.fetch("nutrient_name")
    @nutrients_bfp.derivation_code = params.fetch("derivation_code")
    @nutrients_bfp.output_value = params.fetch("output_value")
    @nutrients_bfp.output_uom = params.fetch("output_uom")

    if @nutrients_bfp.valid?
      @nutrients_bfp.save

      redirect_back(:fallback_location => "/nutrients_bfps", :notice => "Nutrients bfp created successfully.")
    else
      render("nutrients_bfp_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_bfp
    @nutrients_bfp = NutrientsBfp.new

    @nutrients_bfp.ndb_no = params.fetch("ndb_no")
    @nutrients_bfp.nutrient_code = params.fetch("nutrient_code")
    @nutrients_bfp.nutrient_name = params.fetch("nutrient_name")
    @nutrients_bfp.derivation_code = params.fetch("derivation_code")
    @nutrients_bfp.output_value = params.fetch("output_value")
    @nutrients_bfp.output_uom = params.fetch("output_uom")

    if @nutrients_bfp.valid?
      @nutrients_bfp.save

      redirect_to("/bfps/#{@nutrients_bfp.ndb_no}", notice: "NutrientsBfp created successfully.")
    else
      render("nutrients_bfp_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @nutrients_bfp = NutrientsBfp.find(params.fetch("prefill_with_id"))

    render("nutrients_bfp_templates/edit_form.html.erb")
  end

  def update_row
    @nutrients_bfp = NutrientsBfp.find(params.fetch("id_to_modify"))

    @nutrients_bfp.ndb_no = params.fetch("ndb_no")
    @nutrients_bfp.nutrient_code = params.fetch("nutrient_code")
    @nutrients_bfp.nutrient_name = params.fetch("nutrient_name")
    @nutrients_bfp.derivation_code = params.fetch("derivation_code")
    @nutrients_bfp.output_value = params.fetch("output_value")
    @nutrients_bfp.output_uom = params.fetch("output_uom")

    if @nutrients_bfp.valid?
      @nutrients_bfp.save

      redirect_to("/nutrients_bfps/#{@nutrients_bfp.id}", :notice => "Nutrients bfp updated successfully.")
    else
      render("nutrients_bfp_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_product
    @nutrients_bfp = NutrientsBfp.find(params.fetch("id_to_remove"))

    @nutrients_bfp.destroy

    redirect_to("/bfps/#{@nutrients_bfp.ndb_no}", notice: "NutrientsBfp deleted successfully.")
  end

  def destroy_row
    @nutrients_bfp = NutrientsBfp.find(params.fetch("id_to_remove"))

    @nutrients_bfp.destroy

    redirect_to("/nutrients_bfps", :notice => "Nutrients bfp deleted successfully.")
  end
end
