class CreateKaycies < ActiveRecord::Migration
  def change
    create_table :kaycies do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
