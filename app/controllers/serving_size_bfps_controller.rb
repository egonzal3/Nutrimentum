class ServingSizeBfpsController < ApplicationController
  def index
    @q = ServingSizeBfp.ransack(params[:q])
    @serving_size_bfps = @q.result(:distinct => true).includes(:product).page(params[:page]).per(10)

    render("serving_size_bfp_templates/index.html.erb")
  end

  def show
    @serving_size_bfp = ServingSizeBfp.find(params.fetch("id_to_display"))

    render("serving_size_bfp_templates/show.html.erb")
  end

  def new_form
    @serving_size_bfp = ServingSizeBfp.new

    render("serving_size_bfp_templates/new_form.html.erb")
  end

  def create_row
    @serving_size_bfp = ServingSizeBfp.new

    @serving_size_bfp.ndb_no = params.fetch("ndb_no")
    @serving_size_bfp.serving_size = params.fetch("serving_size")
    @serving_size_bfp.serving_size_uom = params.fetch("serving_size_uom")
    @serving_size_bfp.household_serving_size = params.fetch("household_serving_size")
    @serving_size_bfp.household_serving_size_uom = params.fetch("household_serving_size_uom")
    @serving_size_bfp.preparation_state = params.fetch("preparation_state")

    if @serving_size_bfp.valid?
      @serving_size_bfp.save

      redirect_back(:fallback_location => "/serving_size_bfps", :notice => "Serving size bfp created successfully.")
    else
      render("serving_size_bfp_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_bfp
    @serving_size_bfp = ServingSizeBfp.new

    @serving_size_bfp.ndb_no = params.fetch("ndb_no")
    @serving_size_bfp.serving_size = params.fetch("serving_size")
    @serving_size_bfp.serving_size_uom = params.fetch("serving_size_uom")
    @serving_size_bfp.household_serving_size = params.fetch("household_serving_size")
    @serving_size_bfp.household_serving_size_uom = params.fetch("household_serving_size_uom")
    @serving_size_bfp.preparation_state = params.fetch("preparation_state")

    if @serving_size_bfp.valid?
      @serving_size_bfp.save

      redirect_to("/bfps/#{@serving_size_bfp.ndb_no}", notice: "ServingSizeBfp created successfully.")
    else
      render("serving_size_bfp_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @serving_size_bfp = ServingSizeBfp.find(params.fetch("prefill_with_id"))

    render("serving_size_bfp_templates/edit_form.html.erb")
  end

  def update_row
    @serving_size_bfp = ServingSizeBfp.find(params.fetch("id_to_modify"))

    @serving_size_bfp.ndb_no = params.fetch("ndb_no")
    @serving_size_bfp.serving_size = params.fetch("serving_size")
    @serving_size_bfp.serving_size_uom = params.fetch("serving_size_uom")
    @serving_size_bfp.household_serving_size = params.fetch("household_serving_size")
    @serving_size_bfp.household_serving_size_uom = params.fetch("household_serving_size_uom")
    @serving_size_bfp.preparation_state = params.fetch("preparation_state")

    if @serving_size_bfp.valid?
      @serving_size_bfp.save

      redirect_to("/serving_size_bfps/#{@serving_size_bfp.id}", :notice => "Serving size bfp updated successfully.")
    else
      render("serving_size_bfp_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_product
    @serving_size_bfp = ServingSizeBfp.find(params.fetch("id_to_remove"))

    @serving_size_bfp.destroy

    redirect_to("/bfps/#{@serving_size_bfp.ndb_no}", notice: "ServingSizeBfp deleted successfully.")
  end

  def destroy_row
    @serving_size_bfp = ServingSizeBfp.find(params.fetch("id_to_remove"))

    @serving_size_bfp.destroy

    redirect_to("/serving_size_bfps", :notice => "Serving size bfp deleted successfully.")
  end
end
