class CvController < ApplicationController
  def index
  	@citations = Citation.all
  	@authors = Author.all
  end
end