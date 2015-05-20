class CreatePeoplePublications < ActiveRecord::Migration
  def change
    create_table :people_publications, id: false do |t|
      t.belongs_to :person, index: true
      t.belongs_to :publication, index: true
    end
  end
end
