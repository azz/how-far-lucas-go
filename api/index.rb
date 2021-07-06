require 'strava-ruby-client'
client = Strava::Api::Client.new access_token: ENV.fetch('STRAVA_ACCESS_TOKEN')
Handler = Proc.new do |req, res|
  res.status = 200
  res['content-type'] = 'text/plain'
  res.body = client.gear('b7641128').distance_s
end
