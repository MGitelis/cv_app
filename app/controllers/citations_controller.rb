class CitationsController < ApplicationController
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
    @citation = Citation.find(params[:id])

    if @citation.update(params[:citation])
      redirect_to @citation
    else
      render :action => 'edit'
    end
  end

  def edit
    @citation = Citation.find(params[:id])
  end

  def destroy
  end

  def show
    @citation = Citation.find(params[:id])
  end

  private
    def citation_params
      params.require(:citation).permit(:year, :title, :journal, :volume, :issue, :pages, :doi, authors_attributes: [ :first_name, :middle_name, :last_name ])
    end
end
