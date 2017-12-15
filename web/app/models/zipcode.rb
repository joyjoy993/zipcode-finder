class Zipcode
  include Mongoid::Document
  include Mongoid::Geospatial

  field :geometry, type: Polygon
  field :properties, type: Hash

  sphere_index :geometry  # 2dsphere

  def get_result(lat, lng)
    begin
      result = Zipcode.all.geo_spacial(:geometry.intersects_point => [ lng, lat ])
      unless result.empty?
        result.first['properties']['ZCTA5CE10']
      else
        'No result'
      end
    rescue Mongo::Error
      'No result'
    end
  end

end
