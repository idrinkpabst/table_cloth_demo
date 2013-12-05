class CreateOligarchs < ActiveRecord::Migration
  def change
    create_table :oligarchs do |t|
      t.string :name
      t.integer :rank
      t.integer :age
      t.decimal :net_worth
      t.hstore :properties

      t.timestamps
    end
  end
end
