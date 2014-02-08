Prime::Config.configure do |config|
  config.colors do |colors|
    colors.base = 0x1b75bc
    colors.dark = 0x333333
  end

  config.fonts do |fonts|
    fonts.base = "Ubuntu"
  end

  config.api_client do |api|
    api.base = "http://example.com"
    api.client_id = ""
    api.client_secret = ""
  end
end