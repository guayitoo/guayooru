class PostNavbarComponent < ApplicationComponent
  attr_reader :post, :current_user, :search

  def initialize(post:, current_user:, search: nil)
    @post = post
    @current_user = current_user
    @search = search.presence || "status:any"
  end

  def render?
    has_search_navbar? || pools.any? || favgroups.any?
  end

  def pools
    @pools ||= post.pools.undeleted.sort_by do |pool|
      [pool.id == pool_id ? 0 : 1, pool.is_series? ? 0 : 1, pool.name]
    end
  end

  def favgroups
    @favgroups ||= current_user.favorite_groups.for_post(post.id).sort_by do |favgroup|
      [favgroup.id == favgroup_id ? 0 : 1, favgroup.name]
    end
  end

  def has_search_navbar?
    !query.has_metatag?(:order, :ordfav, :ordpool) && pool_id.blank? && favgroup_id.blank?
  end

  def pool_id
    @pool_id ||= query.find_metatag(:pool, :ordpool)&.to_i
  end

  def favgroup_id
    @favgroup_id ||= query.find_metatag(:favgroup, :ordfavgroup)&.to_i
  end

  def query
    @query ||= PostQueryBuilder.new(search)
  end
end