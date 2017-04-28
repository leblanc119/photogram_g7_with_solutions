class PicturesController < ApplicationController

  def new_form
    render("pictures/new_form.html.erb")
  end

  def create_row
    p=Photo.new
    p.source= params["the_source"]
    p.caption= params["the_caption"]
    p.save
    redirect_to("http://localhost:3000/photos")
  end

  def index
    @list_of_photos = Photo.all.order(:created_at => :desc)
    render("pictures/index.html.erb")
  end

  def show
    @my_photo = Photo.find(params["the_id"].to_i)
    render("pictures/show.html.erb")
  end

  def edit_form
    @my_photo = Photo.find(params["edit_id"].to_i)
    render("pictures/edit_form.html.erb")
  end

  def update_row
    p=Photo.find(params["update_id"].to_i)
    p.caption= params["Caption"]
    p.source= params["Image URL"]
    p.save
    redirect_to("http://localhost:3000/photos/#{p.id}")
  end

  def destroy_row
    @list_of_photos = Photo.all
    p=@list_of_photos.find(params["delete_id"].to_i)
    p.destroy
    redirect_to("http://localhost:3000/photos")
  end

end
