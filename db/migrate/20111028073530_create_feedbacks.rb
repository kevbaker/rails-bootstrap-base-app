class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :title
      t.text :body
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
