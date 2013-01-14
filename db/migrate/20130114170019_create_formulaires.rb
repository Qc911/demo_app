class CreateFormulaires < ActiveRecord::Migration
  def self.up
    create_table :formulaires do |t|
      t.string :prenom
      t.string :adresse

      t.timestamps
    end
  end

  def self.down
    drop_table :formulaires
  end
end
