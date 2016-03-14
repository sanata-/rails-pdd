class MailboxData
  include Virtus.model
  attribute :uid, String
  attribute :iname, String
  attribute :sex, String
  attribute :ready, String
  attribute :hintq, String
  attribute :aliases, String
  attribute :enabled, String
  attribute :maillist, String
  attribute :fname, String
  attribute :birth_date, String
  attribute :login, String
  attribute :fio, String
  
  def self.dump(preferences)
    preferences.to_hash
  end

  def self.load(preferences)
    new(preferences)
  end
end
