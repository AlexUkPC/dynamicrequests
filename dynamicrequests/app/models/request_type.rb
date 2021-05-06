class RequestType < ApplicationRecord
  has_many :fields, class_name: "RequestField", dependent: :destroy
	accepts_nested_attributes_for :fields, reject_if: :all_blank, allow_destroy: true
end
