class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end
  # Define the index action to retrieve all artists from the database and assign them to the @artists instance variable.

  def show
    @artist = Artist.find(params[:id])
  end
  # Define the show action to retrieve a specific artist from the database based on the id parameter and assign it to the @artist instance variable.

  def new
    @artist = Artist.new

    redirect_to @artist
  end
  # Define the new action to instantiate a new artist object and assign it to the @artist instance variable before redirecting to the artist show page.

  def edit
    @artist = Artist.find(params[:id])
  end
  # Define the edit action to retrieve a specific artist from the database based on the id parameter and assign it to the @artist instance variable.

  def update
      @artist = Artist.find(params[:id])
      @artist.update(artist_params)

      redirect_to @artist
  end
  # Define the update action to retrieve a specific artist from the database based on the id parameter, update its attributes with the artist_params, and redirect to the artist show page.

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path
  end
  # Define the destroy action to retrieve a specific artist from the database based on the id parameter, destroy it, and redirect to the artists index page.

  private

  def artist_params
    params.require(:artist).permit(:name, :age, :experience_level)
  end
  # Define the artist_params method to permit the name, age, and experience_level attributes for mass assignment.
end
