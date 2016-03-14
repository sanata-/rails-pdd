class PostPreferences
  include Virtus.model
  attribute :github, String
  attribute :twitter, String
  attribute :newsletter, Boolean

  def self.dump(preferences)
    preferences.to_hash
  end

  def self.load(preferences)
    new(preferences)
  end
end
