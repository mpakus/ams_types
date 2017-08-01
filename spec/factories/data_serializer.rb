# frozen_string_literal: true

class DataSerializer < ActiveModel::Serializer
  include AMSTypes

  attributes_integer :id
  attributes_float :price_usd, :price_btc
end
