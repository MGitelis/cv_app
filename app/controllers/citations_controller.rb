class CitationsController < ApplicationController
  def new
    @citation = Citation.new
    @author = Author.new
  end

  def create
    @citation = Citation.new(citation_params)
    if @citation.save
      flash[:notice] = "Citation Created"
      
      redirect_to citations_path
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
    def citation_params
      params.require(:citation).permit(:year, :title, :journal, :volume, :issue, :pages, :doi, :author_id)
    end
end
