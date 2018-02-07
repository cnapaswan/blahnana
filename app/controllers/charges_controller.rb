class ChargesController < ApplicationController
	def new
	end

	def create
		
		customer = Stripe::Customer.create(
		:email => params[:stripeEmail],
		:source  => params[:stripeToken]
		)

		charge = Stripe::Charge.create(
		:customer    => customer.id,
		:amount      => 499,
		:description => 'Rails Stripe customer',
		:currency    => 'usd'
		)

		@user = User.find(session[:user_id])

		@user.banana = @user.banana + 60
		@user.save

		redirect_to '/'

	end  

	# rescue Stripe::CardError => e
	#   flash[:error] = e.message
	#   redirect_to new_charge_path
	# end
end
