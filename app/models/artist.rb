class Artist < ApplicationRecord
  has_many :paintings, dependent: :destroy
  has_many :galleries, through: :paintings
end

# Establish the relationship between the models
# In this case, the Artist model has a one-to-many relationship with the Painting model.
# The dependent: :destroy option ensures that associated paintings are destroyed when an artist is destroyed.
# The Artist model has a many-to-many relationship with the Gallery model through the Painting model, that means that the Artist model has many galleries through the paintings association.
