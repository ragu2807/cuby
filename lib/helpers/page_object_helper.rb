class SitePrism::Page
  def self.inherited(subclass)
    SitePrismSubclass << subclass
  end

  def url(expansion = {})
    returned_url = if self.class.url.nil?
                     self.class.superclass.url
                   else
                     self.class.url
                   end
    Addressable::Template.new(returned_url).expand(expansion).to_s
  end

  def url_matcher
    returned_url_matcher = if self.class.url_matcher.nil?
                             self.class.superclass.url_matcher
                           else
                             self.class.url_matcher
                           end
    returned_url_matcher
  end
end

class SitePrismSubclass
  def self.<<(input)
    @result ||= []
    @result << input
    @result
  end

  def self.results
    @result
  end
end

class App
  def initialize
    all_classes = SitePrismSubclass.results
    all_classes.each do |result|
      self.class.send(:define_method, result.to_s.demodulize.underscore) do
        result.new
      end
    end
  end
end
