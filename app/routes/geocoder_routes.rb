class GeocoderRoutes < Application
  route do |r|
    r.on 'v1/search' do
      r.is do
        r.post do
          result = Geocoder.geocode(r.params['city'])

          response.status = :ok

          Array(result)
        end
      end
    end
  end
end
