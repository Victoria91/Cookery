class AddContentTypeToRecepes < ActiveRecord::Migration
  def change
    add_column :recepes, :content_type, :string
  end
end
