class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def new
  	@item = Item.new
  end

  def create
	if Item.create(item_params)
		redirect_to items_path
	else
		render :new
	end
  end




  def edit
  end


  private

  def item_params
  	params.require(:item).permit(:name, :description, :complete)
  end

end