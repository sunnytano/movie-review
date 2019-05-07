class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.belongs_to :user
      t.belongs_to :movie

      t.timestamps
    end
  end
end
