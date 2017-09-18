class CitationsController < ApplicationController
  before_action :set_citation, only: [:edit, :update, :show, :destroy]
  
  include AuthorsHelper

  def index
    @citations = Citation.includes(:authors)
  end

  def new
    @citation = Citation.new
    1.times { @citation.authors.build }
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

    if @citation.update_attributes(citation_params)
      redirect_to @citation
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    flash[:notice] = "Citation was successfully deleted"
    @citation.destroy
    redirect_to citations_path
  end

  def show
  end

  private
    def set_citation
      @citation = Citation.find(params[:id])
    end

    def citation_params
      params.require(:citation).permit(:year, :title, :journal, :volume, :issue, :pages, :doi, authors_attributes: [ :first_name, :middle_name, :last_name ])
    end
end
