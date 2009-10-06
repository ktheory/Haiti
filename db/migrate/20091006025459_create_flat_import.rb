class CreateFlatImport < ActiveRecord::Migration
  def self.up
    create_table :raw_data do |t|
      t.string :name
      t.string :acronym
      t.string :inscription_no
      t.string :date_de_reconnaisance
      t.string :contact_person
      t.string :address
      t.string :website
      t.string :phone
      t.string :country_of_org
      t.string :sector
      t.string :location
      t.text   :alis_notes
      t.string :nationalite
      t.string :no_du_moniteur
      t.text   :notes
    end
  end

  def self.down
    drop_table :raw_data
  end
end
