class HogwartService

  def get_students(house)
    get_json("house/#{house}")[:data].first[:attributes][:students]
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
   Faraday.new(url: 'http://hogwarts-it.herokuapp.com/api/v1') do |faraday|
     faraday.params['api_key'] = ENV['hogwarts_api']
     faraday.adapter Faraday.default_adapter
   end
  end
end
