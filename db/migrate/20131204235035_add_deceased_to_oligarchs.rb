class AddDeceasedToOligarchs < ActiveRecord::Migration
  def change
    add_column :oligarchs, :deceased, :boolean
  end
end
