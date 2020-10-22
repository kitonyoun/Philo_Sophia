class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :content, null: false
      t.references :request, null: false, foreign_key: true
      t.timestamps
    end
  end
end
