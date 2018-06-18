module ArkClient
  module API
    module Two
      module Blocks
        def list(parameters = {})
          get("blocks", parameters)
        end

        def get(id)
          get("blocks/#{id}")
        end

        def transactions(id, parameters = {})
          get("blocks/#{id}/transactions", parameters)
        end

        def search(parameters)
          post("blocks/search", parameters)
        end
      end
    end
  end
end
