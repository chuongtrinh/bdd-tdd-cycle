require 'spec_helper'

FactoryGirl.define do
  factory :movie do |movie|
    movie.title  "Mission: Impossible III"
    movie.rating "PG-13"
    movie.release_date "2006-11-12"
  end

  factory :die_another_day, :class => Movie do
    title        "Die Another Day"
    rating       "PG-13"
    release_date "2002-08-13"
    director     "Martin Campbell"
  end

  factory :casino_royale, :class => Movie do
    title        "Casino Royale"
    rating       "PG-13"
    release_date "2006-06-21"
    director     "Martin Campbell"
  end

  factory :harry_potter, :class => Movie do
    title        "Harry Potter and the Half-Blood Prince"
    rating       "P"
    release_date "2009-07-07"
    director     "David Yates"
  end
end