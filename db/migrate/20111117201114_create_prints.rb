class CreatePrints < ActiveRecord::Migration
  def change
    create_table :prints do |t|
      t.string    :image_file_name #Uploading file/image
      t.string    :image_file_size
      t.string    :image_content_type
      t.references :user
      t.timestamps
    end
  end
end
