class HomeController < ApplicationController

  def index
    data = BlockIo.get_balance
    @balance = data['data']['available_balance']
    all_address = BlockIo.get_my_addresses
    @addresses = all_address['data']['addresses']
    # price_usd = BlockIo.get_current_price
    # @price = price_usd['data']['prices'][3]['price']
  end

  def quick_send
    BlockIo.withdraw :amounts => '0.0001', :from_addresses => '2NExhiZtBp9Tki8UhWKdVS3Y7VFnAp6V6WU' , :to_addresses => '2NC4mf7i8ypYHK12Mt1kMW3v8kcVZpAdb4P'
    redirect_to :root
  end

  def new_address
    @label = params[:new_address][:label]
    BlockIo.get_new_address :label => @label
    redirect_to :root
  end
end
