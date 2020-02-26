class FollowersController < ApplicationController
  def index
    @followers = Follower.all

    render("follower_templates/index.html.erb")
  end

  def show
    @follower = Follower.find(params.fetch("id_to_display"))

    render("follower_templates/show.html.erb")
  end

  def new_form
    @follower = Follower.new

    render("follower_templates/new_form.html.erb")
  end

  def create_row
    @follower = Follower.new

    @follower.sender_id = params.fetch("sender_id")
    @follower.recipient_id = params.fetch("recipient_id")
    @follower.status = params.fetch("status")

    if @follower.valid?
      @follower.save

      redirect_back(:fallback_location => "/followers", :notice => "Follower created successfully.")
    else
      render("follower_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @follower = Follower.find(params.fetch("prefill_with_id"))

    render("follower_templates/edit_form.html.erb")
  end

  def update_row
    @follower = Follower.find(params.fetch("id_to_modify"))

    @follower.sender_id = params.fetch("sender_id")
    @follower.recipient_id = params.fetch("recipient_id")
    @follower.status = params.fetch("status")

    if @follower.valid?
      @follower.save

      redirect_to("/followers/#{@follower.id}", :notice => "Follower updated successfully.")
    else
      render("follower_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @follower = Follower.find(params.fetch("id_to_remove"))

    @follower.destroy

    redirect_to("/followers", :notice => "Follower deleted successfully.")
  end
end
