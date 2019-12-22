class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :sender
      t.string :recipient
      t.text :text
      t.boolean :is_public
      t.bigint :vote_count
      t.integer :rating

      t.timestamps
    end
  end
end
