class Subject < ApplicationRecord
    has_many :resources, dependent: :destroy 
end
