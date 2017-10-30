class Tag < ApplicationRecord
  belongs_to :site

  def self.tag_params(url)
    Wombat.crawl do
      base_url url

      h1({xpath: "//h1"}, :list)
      h2({xpath: "//h2"}, :list)
      h3({xpath: "//h3"}, :list)

      links({ xpath: "//a/@href" }, :list)

    end
  end
end
