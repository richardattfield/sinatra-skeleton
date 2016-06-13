class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :artist, presence: true
  validate :URL_optional

  private
  def URL_optional
    # binding.pry
    if self.URL && !self.URL.match(/http:\/\//)
      errors.add(:bad_URL, "Please type in a valid URL, beginning with http://")
    end

  end
end
