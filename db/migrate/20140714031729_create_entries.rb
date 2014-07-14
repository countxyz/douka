class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.timestamps null: false

      t.string   :url, null: false
      t.string   :title
      t.text     :summary
    end
    add_reference :entries, :feed, index: true
  end
end
