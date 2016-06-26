class StaticController < ApplicationController
  def index
    @cat = Category.all
  end

  def booking
  end
end
