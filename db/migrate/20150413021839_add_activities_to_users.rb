class AddActivitiesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tennis, :boolean
    add_column :users, :basketball, :boolean
    add_column :users, :racquetball, :boolean
    add_column :users, :soccer, :boolean
    add_column :users, :run, :boolean
    add_column :users, :weights, :boolean
    add_column :users, :swim, :boolean
    add_column :users, :spin, :boolean
    add_column :users, :climb, :boolean
  end
end
