class FeesController < ApplicationController

def new
  @fee = Fee.new
end


def create
  @fee = Fee.new
  @fee.item = params[:fee][:item]
  @fee.price = params[:fee][:price]
  @fee.save
end



end
