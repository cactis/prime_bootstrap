Prime::Config.configure do |config|
  config.colors do |colors|
    colors.base = 0x3aa9b6
    colors.dark = 0x333333
  end

  config.font.name = "Ubuntu"

  config.api_client do |api|
    api.base = "http://example.com"
    api.client_id = ""
    api.client_secret = ""
  end
end