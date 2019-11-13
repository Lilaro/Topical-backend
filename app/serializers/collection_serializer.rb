class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id
  has_one :user
  has_many :clippings, dependent: :destroy
  has_many :articles, through: :clippings
end
