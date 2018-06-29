require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 1 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v1-delegates
      module One
        # Methods for the Delegates API
        class Delegates < Base
          # Get all delegates.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def list(parameters = {})
            @client.get('delegates', parameters)
          end

          # Get the delegate by the given id.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def show(parameters = {})
            @client.get('delegates/get', parameters)
          end

          # Count all delegates.
          #
          # @return [Faraday::Response]
          def count
            @client.get('delegates/count')
          end

          # Search all delegates.
          #
          # @param q [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def search(q, parameters = {})
            @client.get('delegates/search', {q: q}.merge(parameters))
          end

          # Get the voters for the given delegate.
          #
          # @param address [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def voters(public_key, parameters = {})
            @client.get('delegates/voters', {publicKey: public_key}.merge(parameters))
          end

          # Get the delegate registration fee.
          #
          # @param address [String]
          #
          # @return [Faraday::Response]
          def fee
            @client.get('delegates/fee')
          end

          # Get the total forged for the given delegate.
          #
          # @param generator_public_key [String]
          #
          # @return [Faraday::Response]
          def forged_by_account(generator_public_key)
            @client.get('delegates/forging/getForgedByAccount', {generatorPublicKey: generator_public_key})
          end

          # Get a list of the next forgers.
          #
          # @param address [String]
          #
          # @return [Faraday::Response]
          def next_forgers
            @client.get('delegates/getNextForgers')
          end

          # Get the forging status for the given delegate.
          #
          # @param public_key [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def forging_status(public_key, parameters = {})
            @client.get('delegates/forging/status', {:publicKey => public_key}.merge(parameters))
          end
        end
      end
    end
  end
end
