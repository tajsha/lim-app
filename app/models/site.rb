class Site < ApplicationRecord
  has_one :tag, dependent: :destroy
  after_save :update_or_create_tag

  private

  def update_or_create_tag
      tag_params = Tag.tag_params(url)
      tag_params['links'] = ['links'].uniq.collect do |href|
        URI.join(url, href).to_s
      end
      if tag.present?
        tag.update(tag_params)
      else
        build_tag(tag_params)
      end
      tag.save!
  end
end
