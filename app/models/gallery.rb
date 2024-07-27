class Gallery < ApplicationRecord
  has_many :paintings, dependent: :destroy
  has_many :artists, through: :paintings
end

# Establish the relationship between the models
# In this case, the Gallery model has a one-to-many relationship with the Painting model.
# The Gallery model has a many-to-many relationship with the Artist model through the Painting model.
# The Gallery model has many paintings and artists through the paintings association.
# The dependent: :destroy option ensures that associated paintings are destroyed when a gallery is destroyed.
