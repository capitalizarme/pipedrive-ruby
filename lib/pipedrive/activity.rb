module Pipedrive
  class Activity < Base
    def delete
      opts = {id: self.id}
      res = delete "#{resource_path}/#{id}", :body => opts
      res.success? ? res['data']['id'] : bad_response(res,opts)
    end
  end
end