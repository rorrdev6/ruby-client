module ArkClient
  class Client
    module API
      module One
        module Signatures
          def fee
            get('api/signatures/fee')
          end
        end
      end
    end
  end
end
