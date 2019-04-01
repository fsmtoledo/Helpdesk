class Produto < ApplicationRecord
    validates :nome, presence: true
    validates :nome, length: { minimum: 5 }
end
