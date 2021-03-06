class MatchesController < ApplicationController
  def index
    @matches = Match.all

    render("matches/index.html.erb")
  end

  def show
    @match = Match.find(params[:id])

    render("matches/show.html.erb")
  end

  def new
    @match = Match.new
    render("matches/new.html.erb")
  end

  def create
    @match = Match.new
    @match.creator_id = current_user.id
    @match.acceptor_id = params[:acceptor_id]
    @match.listing_id = params[:listing_id]
    @match.state = 0
    @match.requested = 1

    save_status = @match.save

    if save_status == true
      redirect_to("/matches", :notice => "Match Request created successfully.")
    else
      redirect_to("/listings", :notice => "You have already requested a match for this listing.")
    end
  end

  def edit
    @match = Match.find(params[:id])

    render("matches/edit.html.erb")
  end

  def update
    @match = Match.find(params[:id])
    @match.state = 1
    save_status = @match.save

    if save_status == true
      redirect_to("/matches", :notice => "Match Accepted")
    else
        redirect_to("/matches", :notice => "Something went wrong")
    end
  end

  def destroy
    @match = Match.find(params[:id])

    @match.destroy

    if URI(request.referer).path == "/matches/#{@match.id}"
      redirect_to("/", :notice => "Match deleted.")
    else
      redirect_to(:back, :notice => "Match deleted.")
    end
  end
end
