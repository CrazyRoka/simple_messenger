class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.belongs_to :sender, foreign_key: true
      t.belongs_to :receiver, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
