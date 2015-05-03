class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :author
      t.text :text
      t.string :rel_class

      t.timestamps null: false
    end
  end
end
