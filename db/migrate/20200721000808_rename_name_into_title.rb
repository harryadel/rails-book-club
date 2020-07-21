class RenameNameIntoTitle < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :name, :title
  end
end
