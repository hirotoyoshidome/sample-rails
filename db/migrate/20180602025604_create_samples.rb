class CreateSamples < ActiveRecord::Migration[5.2]
  #DB作成のマイグレーションスクリプト
  def change
    create_table :samples do |t|
      t.string :name, :null => false
      t.string :age, :null => false

      t.timestamps
    end
  end
end
