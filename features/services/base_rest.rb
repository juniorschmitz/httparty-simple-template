# frozen_string_literal: true

class BaseRest
  include HTTParty
  base_uri $base_uri

  def initialize
    @headers = { 'Content-Type' => 'application/json' }
  end

  def get_request(endpoint, _body = nil)
    self.class.get(
      endpoint,
      headers: @headers
    )
  end

  def post_request(endpoint, body)
    self.class.post(endpoint,
                    headers: @headers,
                    body: body.to_json)
  end

  def delete_request(endpoint, _body = nil)
    self.class.delete(endpoint,
                      headers: @headers)
  end

  def put_request(endpoint, body)
    self.class.put(endpoint,
                   headers: @headers,
                   body: body.to_json)
  end

  def set_token(token)
    @headers['Authorization'] = token
  end
end
