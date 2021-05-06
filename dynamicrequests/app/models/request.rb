class Request < ApplicationRecord
  belongs_to :request_type
	serialize :properties, Hash
end
