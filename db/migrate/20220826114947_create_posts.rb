class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string:title
      t.date:start
      t.date:stop
      t.string:memo
      t.boolean:allday

      t.timestamps
    end
  end
end
