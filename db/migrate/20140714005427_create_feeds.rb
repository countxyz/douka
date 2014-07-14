class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.timestamps null: false

      t.string :url, null: false
    end
  end
end
