class Item < ActiveRecord::Base
  has_many :document_items
  accepts_nested_attributes_for :document_items

  has_many :documents, through: :document_items
end
