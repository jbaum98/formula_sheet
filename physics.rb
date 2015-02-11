require 'json'
require 'slim'

class Section
  attr_reader :head, :eqs

  def self.wrap(eq) "<p>\\(#{eq}\\)<p>" end

  def to_s
    @head + @eqs.join()
  end


  def initialize(head, eqs)
    @head = "<h1>#{head}</h1>"
    @eqs = eqs.map{ |eq| Section.wrap(eq) }
  end
end

sections = JSON.parse(File.read('physics.json'))["sections"].map { |head, eqs| Section.new(head, eqs) }

template = Slim::Template.new('physics.slim')

File.open('physics.html', 'w') do |f|
  f.write template.render(Object.new, sections: sections)
end
