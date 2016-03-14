class YandexPdd
  attr_reader :token, :url, :domain
  def initialize
    @token  = ENV['yandex_pdd_token']
    @url    = ENV['yandex_pdd_url']
    @domain = ENV['yandex_pdd_domain']
  end
end
