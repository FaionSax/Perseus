class CreateRkScaffolds < ActiveRecord::Migration
  def change
    create_table :rk_scaffolds do |t|

      t.timestamps null: false
    end
  end
end
