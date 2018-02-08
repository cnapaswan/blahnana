class BananaTransactionsController < ApplicationController
  def give_banana
    banana = BananaTransaction.new
    banana.source_user_id = params[:source_user_id]
    banana.target_user_id = params[:target_user_id]
    banana.story_entry_id = params[:story_entry_id]
    if banana.save
      give_take
    end
  end

  def give_take
    receiver = User.find(params[:target_user_id])
    giver = User.find(params[:source_user_id])

    if giver.banana > 0 && giver != receiver
      receiver.banana+= 1
      receiver.save
      giver.banana-= 1
      giver.save
      redirect_to request.referrer
    else
      redirect_to '/buynana'
    end
  end

  # def api_give_banana
  #   banana = BananaTransaction.new
  #   banana.source_user_id = params[:source_user_id]
  #   banana.target_user_id = params[:target_user_id]
  #   banana.story_entry_id = params[:story_entry_id]
  #   if banana.save
  #     give_take
  #     render json: banana
  #   end
  # end

end
