class Painting < ApplicationRecord
  belongs_to :artist
  belongs_to :gallery
end

# Establish the relationship between the models
# In this case, the Painting model has a one-to-many relationship with the Artist model.
# The Painting model has a one-to-many relationship with the Gallery model.