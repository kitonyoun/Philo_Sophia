class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :request_title
      t.text :question_box
      t.integer :answer_box_type, default: 0
      t.date :start_on
      t.date :end_on

      t.timestamps
    end
  end
end
