class CvController < ApplicationController
  def index
  	@citations = Citation.includes(:authors)
  end
end
