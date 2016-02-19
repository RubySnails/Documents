class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.references :document_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
