class ArtworkSharesController < ApplicationController

  def create
    artwork_shares = ArtworkShare.new(artwork_share_params)
    # debugger
    artwork_shares.save!
    render json: artwork_shares
  end

  def destroy
    artwork_shares = ArtworkShare.find_by(id: params[:id])
    artwork_shares.destroy!
    render json: artwork_shares
  end

  private
  def artwork_share_params
    params.require(:artwork_shares).permit(:artwork_id, :viewer_id)
  end

end