require 'mqtt'


class MqttReader
def self.read()
  client = MQTT::Client.new
  client.host = 'staging.thethingsnetwork.org'
  client.port = '1883'
  client.username = '70B3D57ED00012B2'
  client.password = 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
  client.connect
  c = 0
  topic, message=client.get('70B3D57ED00012B2/devices/00000000AE6C63E4/up')

  return JSON.parse(message)['fields']['temperature']
end
end
