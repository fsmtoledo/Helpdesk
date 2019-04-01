class User < ApplicationRecord

    enum role: [:normal_user, :admin]

    has_one :descricao

    accepts_nested_attributes_for :descricao

    scope :search, ->(query) {  where("name like ?", "%#{query}%") }
end
