class UrlReader

  def self.open_url(url)
return (Net::HTTP.get(URI.parse(url))).to_f
  end
end
