class AddPictureToRecepes < ActiveRecord::Migration
  def change
    add_column :recepes, :picture, :binary
  end
end
