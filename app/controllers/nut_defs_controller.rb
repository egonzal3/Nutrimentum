class NutDefsController < ApplicationController
  def index
    @q = NutDef.ransack(params[:q])
    @nut_defs = @q.result(:distinct => true).includes(:nut_data_foods).page(params[:page]).per(10)

    render("nut_def_templates/index.html.erb")
  end

  def show
    @nut_data_food = NutDataFood.new
    @nut_def = NutDef.find(params.fetch("id_to_display"))

    render("nut_def_templates/show.html.erb")
  end

  def new_form
    @nut_def = NutDef.new

    render("nut_def_templates/new_form.html.erb")
  end

  def create_row
    @nut_def = NutDef.new

    @nut_def.units = params.fetch("units")
    @nut_def.tagname = params.fetch("tagname")
    @nut_def.nutrdesc = params.fetch("nutrdesc")
    @nut_def.num_dec = params.fetch("num_dec")
    @nut_def.sr_order = params.fetch("sr_order")

    if @nut_def.valid?
      @nut_def.save

      redirect_back(:fallback_location => "/nut_defs", :notice => "Nut def created successfully.")
    else
      render("nut_def_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @nut_def = NutDef.find(params.fetch("prefill_with_id"))

    render("nut_def_templates/edit_form.html.erb")
  end

  def update_row
    @nut_def = NutDef.find(params.fetch("id_to_modify"))

    @nut_def.units = params.fetch("units")
    @nut_def.tagname = params.fetch("tagname")
    @nut_def.nutrdesc = params.fetch("nutrdesc")
    @nut_def.num_dec = params.fetch("num_dec")
    @nut_def.sr_order = params.fetch("sr_order")

    if @nut_def.valid?
      @nut_def.save

      redirect_to("/nut_defs/#{@nut_def.id}", :notice => "Nut def updated successfully.")
    else
      render("nut_def_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @nut_def = NutDef.find(params.fetch("id_to_remove"))

    @nut_def.destroy

    redirect_to("/nut_defs", :notice => "Nut def deleted successfully.")
  end
end
