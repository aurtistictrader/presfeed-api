class CreateObservers < ActiveRecord::Migration
  def change
    create_table :observers do |t|
      t.belongs_to :presenter
      t.integer :status, :default => 2
      t.timestamps
    end
  end
end
