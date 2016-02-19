class Document < ActiveRecord::Base
  belongs_to :document_type

  has_many :document_items, dependent: :destroy
  accepts_nested_attributes_for :document_items, allow_destroy: true

  has_many :items, through: :document_items
end
