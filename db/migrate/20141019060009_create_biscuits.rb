class CreateBiscuits < ActiveRecord::Migration
  def change
    create_table :biscuits do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
