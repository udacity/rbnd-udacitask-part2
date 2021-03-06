class LinkItem
  # include Listable
  attr_reader :description, :site_name

  def initialize(url, options={})
    @description = url
    @site_name = options[:site_name]
  end
  def format_description
    "#{@description}".ljust(25)
  end
  def format_name
    @site_name ? @site_name : ""
  end
  def details
    format_description + "site name: " + format_name
  end
end
