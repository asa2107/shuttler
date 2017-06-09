class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render("listings/index.html.erb")
  end

  def show
    @listing = Listing.find(params[:id])
    render("listings/show.html.erb")
  end

  def new
    @listing = Listing.new

    render("listings/new.html.erb")
  end

  def create
    @listing = Listing.new

    @listing.start_time = params[:start_time]
    @listing.end_time = params[:end_time]
    @listing.location = params[:location]
    @listing.user_id = params[:user_id]

    save_status = @listing.save

    if save_status == true
      redirect_to("/listings/#{@listing.id}", :notice => "Listing created successfully.")
    else
      render("listings/new.html.erb")
    end
  end

  def edit
    @listing = Listing.find(params[:id])

    render("listings/edit.html.erb")
  end

  def update
    @listing = Listing.find(params[:id])

    @listing.date = params[:date]
    @listing.start_time = params[:start_time]
    @listing.end_time = params[:end_time]
    @listing.recurring = params[:recurring]
    @listing.no_of_weeks = params[:no_of_weeks]
    @listing.location = params[:location]
    @listing.user_id = params[:user_id]

    save_status = @listing.save

    if save_status == true
      redirect_to("/listings/#{@listing.id}", :notice => "Listing updated successfully.")
    else
      render("listings/edit.html.erb")
    end
  end

  def destroy
    @listing = Listing.find(params[:id])

    @listing.destroy

    if URI(request.referer).path == "/listings/#{@listing.id}"
      redirect_to("/", :notice => "Listing deleted.")
    else
      redirect_to(:back, :notice => "Listing deleted.")
    end
  end
end
