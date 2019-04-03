class HogwartAsAService

  def get_students(house1)
    house_r = []
    get_json('house').each do |house|
      house_r << house if house[:name] == house1
    end
    house_id = house_r.first[:id]
    
    get_json("house/#{house_id}")
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
   Faraday.new(url: 'https://hogwarts-as-a-service.herokuapp.com/api/v1/') do |faraday|
     faraday.headers['x_api_key'] = ENV['hogwarts_service_api']
     faraday.adapter Faraday.default_adapter
   end
  end
end
