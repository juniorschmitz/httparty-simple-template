class ServeRest < BaseRest
  include HTTParty
  base_uri $base_uri

  def initialize
    @headers = {'Content-Type' => 'application/json'}
  end
end
