class ItemsController < ApplicationController
  def show
    @items = Items.all
  end
end
