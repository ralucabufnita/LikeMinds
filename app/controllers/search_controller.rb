class SearchController < ApplicationController

  def foos
    search do
      Ideax.where :name => params[:q]
    end
  end

  def bars
    search do
      Bar.where :title => params[:q]
    end
  end

  private

  def search(&block)
    if params[:q]
      @results = yield if block_given?

      respond_to do |format|
        format.html # resources.html.erb
        format.json { render json: @results }
      end
    else
      redirect_to root_url, :notice => 'No search query was specified.'
    end
  end


end
