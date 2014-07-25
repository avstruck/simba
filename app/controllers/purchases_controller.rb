class PurchasesController < ApplicationController
  	require 'paypal-sdk-rest'
	  include PayPal::SDK::REST

  protect_from_forgery :except => [:create]

  def new
  	end

  def create
    # Get the credit card details submitted by the form
    token = params[:stripeToken]

    piece = Piece.find(params[:piece_id])
    price = piece.original_value

    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => price,
        :currency => "usd",
        :card => token,
        :description => piece.title
      )

      # Create a new Purchase instance to record the transaction
      # Note: I removed the automatic price updating from piece.update_attributes
      # Note: + signs were making errors when updating original_value and number_prints so I removed them
      @purchase = Purchase.create(quantity: 1, purchase_price: price, piece_id: piece.id)
               
      piece.update_attributes(original_value: piece.original_value, number_prints: piece.number_prints)
          
      # Create a new Print if user logged in, and update purchase to record buyer
      if user_signed_in?
        @print = Print.create(piece_id: piece.id, owner_id: current_user.id)
        @purchase.update_attributes(initiator_id: current_user.id)
      end

      redirect_to root_path

    # The card has been declined
    rescue Stripe::CardError => e
      redirect_to root_path
    end
  end
end
