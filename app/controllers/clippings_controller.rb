class ClippingsController < ApplicationController

  def index
    clippings = Clipping.all
    render json: clippings
  end

  def create
    clipping = Clipping.create(clipping_params)
    render json: clipping
  end

  private

  def clipping_params
    params.require(:clipping).permit(:collection_id, :article_id)
  end

end
