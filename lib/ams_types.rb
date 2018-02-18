# frozen_string_literal: true

require 'ams_types/version'

# adds types to ActiveModel::Serializers attributes
# @example
#   class DataSerializer < ActiveModel::Serializer
#     attributes_integer :id
#     attributes_float :price_usd, :price_btc
module AMSTypes
  def self.included(base)
    base.extend ClassMethods
  end

  # extension methods
  module ClassMethods
    def attributes_float(*attrs)
      attrs.each do |attr|
        attribute(attr) unless _attributes_data.fetch(attr, nil)
        define_method(attr) do
          object.send(attr.to_sym).to_f
        end
      end
    end

    def attributes_integer(*attrs)
      attrs.each do |attr|
        attribute(attr) unless _attributes_data.fetch(attr, nil)
        define_method(attr) do
          object.send(attr.to_sym).to_i
        end
      end
    end

    def attributes_boolean(*attrs)
      attrs.each do |attr|
        attribute(attr) unless _attributes_data.fetch(attr, nil)
        define_method(attr) do
          object.send(attr.to_sym).to_s == 'true'
        end
      end
    end
  end
end
