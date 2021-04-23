require 'prometheus/client'
require 'prometheus/middleware/exporter'

Metrics.configure do |registry|
  registry.counter(
    :geocoding_requests_total,
    docstring: 'The total number of geocoding requests.',
    labels: %i[result]
  )

  registry.histogram(
    :geocoding_requests_duration,
    docstring: 'The duration of geocode by city',
    labels: %i[result]
  )
end
