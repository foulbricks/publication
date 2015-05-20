class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string  :name
      t.string  :headline
      t.text    :description_text
      t.string  :pub_image
      t.date    :pub_date

      t.timestamps null: false
    end
  end
end
