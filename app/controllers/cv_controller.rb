class CvController < ApplicationController
  def index
  	@citations = Citation.all
  	@authors = Author.all
  	@citations = citations.authors.build
  end
end
