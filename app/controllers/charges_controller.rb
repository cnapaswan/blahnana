class ChargesController < ApplicationController
	def new
	end

	def create
		price = params[:price].to_f * 100
		item_count = params[:item_count]

		customer = Stripe::Customer.create(
		:email => params[:stripeEmail],
		:source  => params[:stripeToken]
		)


		charge = Stripe::Charge.create(
		:customer    => customer.id,
		:amount      => price.to_i,
		:description => 'Buynana Purchase',
		:currency    => 'aud'
		)

		@user = User.find(session[:user_id])
		@user.banana = @user.banana + item_count.to_i
		@user.save

		redirect_to '/'

	end  

	# rescue Stripe::CardError => e
	#   flash[:error] = e.message
	#   redirect_to new_charge_path
	# end
end
