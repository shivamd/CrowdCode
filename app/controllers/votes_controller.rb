class VotesController < ApplicationController
  respond_to :js, :html
    def create
      vote = Vote.new(params[:vote])
      vote.user_id = current_user.id
      if vote.save!
        render :text => render_to_string(:partial => 'edit_votes', :locals => { :votable_type => params[:vote][:votable_type].constantize.find(vote.votable_id) })
      else
        redirect_to :back
      end
    end

    def update
      vote = Vote.where(votable_id: params[:vote][:votable_id],
                        votable_type: params[:vote][:votable_type],
                        user_id: current_user.id).first
      vote.score = params[:vote][:score]
      if vote.save!
        render :text => render_to_string(:partial => 'edit_votes', :locals => { :votable_type => params[:vote][:votable_type].constantize.find(vote.votable_id) })
      else
        redirect_to :back
      end
    end

end
