class DropAuthrizations < ActiveRecord::Migration
  def change
    drop_table :authorizations
  end
end
