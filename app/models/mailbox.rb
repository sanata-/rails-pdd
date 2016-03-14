class Mailbox < ApplicationRecord
  serialize :data, MailboxData
end
