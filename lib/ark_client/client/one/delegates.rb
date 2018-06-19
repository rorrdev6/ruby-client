require 'ark_client/http/request'

module ArkClient
  class Client
    # Methods for Version 1 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v1-delegates
    module One
      # Methods for the Delegates API
      class Delegates
        include ArkClient::HTTP::Request

        # Create a new resource instance.
        #
        # @param host [String]
        #
        # @return [ArkClient::Client::One::Delegates]
        def initialize(host)
          @host = host
          @version = 1
        end

        # Get all delegates.
        #
        # @param parameters [Hash]
        #
        # @return [Hash]
        def delegates(parameters = {})
          get('delegates', parameters)
        end

        # Get the delegate by the given id.
        #
        # @param parameters [Hash]
        #
        # @return [Hash]
        def delegate(parameters = {})
          get('delegates/get', parameters)
        end

        # Count all delegates.
        #
        # @return [Hash]
        def count
          get('delegates/count')
        end

        # Search all delegates.
        #
        # @param q [String]
        # @param parameters [Hash]
        #
        # @return [Hash]
        def search(q, parameters = {})
          get('delegates/search', {q: q}.merge(parameters))
        end

        # Get the voters for the given delegate.
        #
        # @param address [String]
        # @param parameters [Hash]
        #
        # @return [Hash]
        def voters(public_key, parameters = {})
          get('delegates/voters', {publicKey: public_key}.merge(parameters))
        end

        # Get the delegate registration fee.
        #
        # @param address [String]
        #
        # @return [Hash]
        def delegate_fee
          get('delegates/fee')
        end

        # Get the total forged for the given delegate.
        #
        # @param generator_public_key [String]
        #
        # @return [Hash]
        def forged_by_account(generator_public_key)
          get('delegates/forging/getForgedByAccount', {generatorPublicKey: generator_public_key})
        end

        # Get a list of the next forgers.
        #
        # @param address [String]
        #
        # @return [Hash]
        def next_forgers
          get('delegates/getNextForgers')
        end

        # Get the forging status for the given delegate.
        #
        # @param public_key [String]
        # @param parameters [Hash]
        #
        # @return [Hash]
        def forging_status(public_key, parameters = {})
          get('delegates/forging/status', {:publicKey => public_key}.merge(parameters))
        end
      end
    end
  end
end
