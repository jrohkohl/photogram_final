class FansController < ApplicationController
  def index
    @q = Fan.ransack(params[:q])
    @fans = @q.result(:distinct => true).page(params[:page]).per(10)

    render("fan_templates/index.html.erb")
  end

  def show
    @fan = Fan.find(params.fetch("id_to_display"))

    render("fan_templates/show.html.erb")
  end

  def new_form
    @fan = Fan.new

    render("fan_templates/new_form.html.erb")
  end

  def create_row
    @fan = Fan.new

    @fan.fan_id = params.fetch("fan_id")
    @fan.photo_id = params.fetch("photo_id")

    if @fan.valid?
      @fan.save

      redirect_back(:fallback_location => "/fans", :notice => "Fan created successfully.")
    else
      render("fan_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @fan = Fan.find(params.fetch("prefill_with_id"))

    render("fan_templates/edit_form.html.erb")
  end

  def update_row
    @fan = Fan.find(params.fetch("id_to_modify"))

    @fan.fan_id = params.fetch("fan_id")
    @fan.photo_id = params.fetch("photo_id")

    if @fan.valid?
      @fan.save

      redirect_to("/fans/#{@fan.id}", :notice => "Fan updated successfully.")
    else
      render("fan_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @fan = Fan.find(params.fetch("id_to_remove"))

    @fan.destroy

    redirect_to("/fans", :notice => "Fan deleted successfully.")
  end
end
