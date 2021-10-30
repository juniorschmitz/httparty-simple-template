# frozen_string_literal: true

class Utils
  def self.log_response(response)
    puts JSON.pretty_generate(JSON.parse(response.to_s.force_encoding('UTF-8'))).to_s
  end

  def self.get_schema(type)
    JSON.parse(File.read(%(#{Dir.pwd}/features/support/utils/schemas/#{type}.json)))
  end
end
