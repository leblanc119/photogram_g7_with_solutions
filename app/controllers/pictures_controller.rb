class PicturesController < ApplicationController

  def new_form
    render("pictures/new_form.html.erb")
  end

  def create_row
    redirect_to("http://localhost:3000/photos")
  end

  def index
    @photo_id = params["da_id"].to_i
    render("pictures/index.html.erb")
  end

  def show
    render("pictures/show.html.erb")
  end

  def edit_form
    render("pictures/edit_form.html.erb")
  end

  def update_row
    render("pictures/update_row.html.erb")
  end

  def destroy_row
    render("pictures/destroy_row.html.erb")
  end

end
