# frozen_string_literal: true

class ServeRest < BaseRest
  include HTTParty
  base_uri $base_uri

  def initialize
    super
    @headers = { 'Content-Type' => 'application/json' }
  end
end
