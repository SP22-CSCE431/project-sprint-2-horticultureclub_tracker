# frozen_string_literal: true

class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :icon
end
