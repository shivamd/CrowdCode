module VotesHelper
  
  def vote_button(action, name, votable, method = :post)
    button_to name,
    {
      :action => action,
      :controller => 'votes',
      :id => votable.id,
      :vote => {
        :votable_id => votable.id,
        :votable_type => votable.class.to_s,
        :score => name == "Upvote" ? 1 : -1
      }
    }, method: method, remote: true
  end

  def upvote?(votable, votable_id)
     find_votes(votable, votable_id).first.score == 1
  end

  def find_votes(votable, votable_id)
    current_user.votes.where("votable_type = ? AND votable_id = ?", votable, votable_id)
    # current_user.votes.find_by_votable_type_and_votable_id(votable, votable_id)
  end

end
