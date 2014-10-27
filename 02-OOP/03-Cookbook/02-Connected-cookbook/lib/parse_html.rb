require 'nokogiri'
require 'open-uri'

class Parse

  attr_accessor :url
  def initialize(url)
    @url = URI.encode(url)
  end

  def collect_recipe_from_marmiton
  doc = Nokogiri::HTML(open(@url), nil, 'utf-8')
  recipes_from_url = []
  doc.css('.m_contenu_resultat').each do |element|
    hash = {}
    hash = {
      :name => element.search('.m_titre_resultat > a').inner_text,
      :rating => (element.search('.m_recette_note1').size / 5),
      :cook_and_prep_time => element.search('.m_detail_time > div').inner_text,
      :preparation => element.search('.m_texte_resultat').inner_text,
      # :cook_time => cook_and_prep_time.children[1],
      # :prep_time => cook_and_prep_time.children[3]
    }
    recipes_from_url << hash
    end
    recipes_from_url
  end
end
