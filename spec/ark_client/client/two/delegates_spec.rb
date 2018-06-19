require "spec_helper"

describe ArkClient::Client::Two::Delegates do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
  end

  describe ".list" do
    it "should be ok" do
      response = @client.list
      expect(response.code).to be 200
    end
  end

  describe ".show" do
    it "should be ok" do
      response = @client.show
      expect(response.code).to be 200
    end
  end

  describe ".blocks" do
    it "should be ok" do
      response = @client.blocks
      expect(response.code).to be 200
    end
  end

  describe ".voters" do
    it "should be ok" do
      response = @client.voters
      expect(response.code).to be 200
    end
  end
end
