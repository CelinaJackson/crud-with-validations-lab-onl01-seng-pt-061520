class Song < ApplicationRecord
    validates :title, presence: true 
    validates :title, uniqueness: { scope: [:release_year, :artist_name]}
    validates :release_year, :numericality => { :only_integer => true, :less_than_or_equal_to => 2021 }, if: :released

end
