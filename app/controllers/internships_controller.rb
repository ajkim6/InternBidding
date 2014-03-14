class InternshipController < ApplicationController

  def index
    @internship_list = Internship.all.order('firm_name asc')
  end

  def show
    @internship = Internship.find_by(:id => params[:internship_id])
    @reviews = Review.where(:Internship_id => @internship.id)
  end

  def destroy
    internship = Internship.find_by(:id => params[:internship_id])
    internship.destroy
    redirect_to "/internships", notice: "That internship is toast!"
  end

  def new
  end

  def create
    internship = Internship.new
    internship.name = params["name"]
    internship.price = params["price"]
    internship.description = params["description"]
    internship.image_url = params["image_url"]
    internship.save
    redirect_to "/internships"
  end

  def edit
    @internship = Internship.find_by(:id => params[:internship_id])
  end

  def update
    internship = Internship.find_by(:id => params[:internship_id])
    internship.name = params["name"]
    internship.price = params["price"]
    internship.description = params["description"]
    internship.image_url = params["image_url"]
    internship.save
    redirect_to "/internships"
  end

end
