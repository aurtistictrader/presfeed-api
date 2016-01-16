class CreateObservers < ActiveRecord::Migration
  def change
    create_table :observers do |t|

      t.timestamps
    end
  end
end
