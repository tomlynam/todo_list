class StaticPagesController < ApplicationController
  def home
  	@items = Item.all
  	@checked = Item.where(complete: true)
  end

  def about
  end
end
