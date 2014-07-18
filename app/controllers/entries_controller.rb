class EntriesController < ApplicationController
  respond_to :json

  def index
    render json: Entry.all, each_serializer: EntrySerializer
  end

  def create
    entry = Entry.new(entry_params)
    if entry.save then render json: entry
    else render json: { errors: entry.errors.messages }, status: 422; end
  end

  private

    def entry_params
      params.require(:entry).permit(:id, :url, :title, :summary, :feed_id)
    end
end
