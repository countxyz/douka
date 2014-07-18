class FeedsController < ApplicationController
  respond_to :json

  def index
    render json: Feed.all, each_serializer: FeedSerializer
  end

  def show
    render json: Feed.find(params[:id])
  end

  def create
    feed = Feed.new(feed_params)

    if   feed.save then render json: feed
    else render json: { errors: feed.errors.messages }, status: 422; end
  end

  def update
    feed = Feed.find(params[:id])

    if feed.update_attributes(feed_params) then render json: post, status: :ok
    else render json: { errors: feed.errors.messages}, status: 422; end
  end

  def destroy
    feed = Feed.find(params[:id])

    if feed.destroy then render json: nil, status: :ok
    else render json: { errors: post.errors.messages }, status: 404; end
  end

  private

    def feed_params
      params.require(:feed).permit(:id, :url,
                     entries: [:id, :url, :title, :summary, :feed_id])
    end
end
