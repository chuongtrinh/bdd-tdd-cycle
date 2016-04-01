require 'spec_helper'
require 'movie_controller_helper'

describe Movie do

  describe "add director to an existing movie" do
    before do
      @movie = FactoryGirl.create(:movie)
      @movie.director = "Martin Campbell"
      @movie.save
    end
    subject { @movie }

    its(:director) { should eql "Martin Campbell" }

    describe "find movies with same director" do
      before do
        [:die_another_day, :casino_royale, :harry_potter].each do |m|
          FactoryGirl.create(m)
        end
      end

      it { @movie.find_all_by_director.should eql(Movie.find_all_by_director("Martin Campbell")) }
    end
  end
  
end