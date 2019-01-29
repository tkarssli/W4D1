class ArtworksController < ApplicationController
  def index
    render json: {user_artwork: Artwork.find_by(artist_id: params[:user_id]),
                  user_shared_artworks: User.find_by(id: params[:user_id]).shared_artworks}
  end

  def create
    artwork = Artwork.new(artwork_params)
    artwork.save!
    render json: artwork
  end

  def destroy
    # debugger
    artwork = Artwork.find_by(id: params[:id])
    artwork.destroy!
  end

  def show
    render json: params
  end

  def update
    artwork = Artwork.find_by(id: params[:id])
    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 501
    end
      
  end

  private
  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end

end