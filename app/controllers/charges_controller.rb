class ChargesController < ApplicationController

  def new
  end

  def index
  end

  def home
     # @ad=Ad.new
  end

  def create
    
    # @ad=Ad.find(params[])


    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => 500,#@ad.price,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    # redirect_to charges_path
  end


end
