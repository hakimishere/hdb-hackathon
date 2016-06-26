class StaticController < ApplicationController
  def index
    @cat = Category.all
  end
end
