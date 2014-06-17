class PurchasesController < ApplicationController
  	require 'paypal-sdk-rest'
	  include PayPal::SDK::REST

  protect_from_forgery :except => [:create]

  def new
  	end

  def create
    Stripe.api_key = "sk_test_ZN1m0YhkpfyXEu7DBZwRQJx0"

    # Get the credit card details submitted by the form
    token = params[:stripeToken]

    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => 1000, # amount in cents, again
        :currency => "usd",
        :card => token,
        :description => "payinguser@example.com"
      )
      #create a new purchase if the charge was successful
       piece = Piece.find(params[:piece_id])
       @purchase = Purchase.new(purchase_type: "print",
         purchase_price: piece.price, initiator_id: current_user.id)
      #piece.update_attributes(original_value: piece.original_value + 100, number_prints: piece.number_prints + 1)
    rescue Stripe::CardError => e
      # The card has been declined
    end
  end
end
