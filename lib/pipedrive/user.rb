module Pipedrive
  class User < Base
    def activities
      Activity.all(get "#{resource_path}/#{id}/activities")
    end

    def mail_messages
      MailMessage.all(get "#{resource_path}/#{id}/mailMessages")
    end
  end
end