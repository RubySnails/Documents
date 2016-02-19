class CreateDocumentItems < ActiveRecord::Migration
  def change
    create_table :document_items do |t|
      t.references :document, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
