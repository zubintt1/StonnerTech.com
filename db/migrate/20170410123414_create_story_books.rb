class CreateStoryBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :story_books do |t|

      t.timestamps
    end
  end
end
