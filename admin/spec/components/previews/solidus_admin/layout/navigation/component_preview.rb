# frozen_string_literal: true

require "solidus_admin/menu_item"

# @component "layout/navigation"
class SolidusAdmin::Layout::Navigation::ComponentPreview < ViewComponent::Preview
  include SolidusAdmin::Preview

  # The item component is used to render main navigation items, which are
  # rendered within the sidebar.
  #
  # It needs to be passed a {SolidusAdmin::MenuItem} instance, which
  # represents the data for a main navigation item.
  #
  # ```ruby
  # item = SolidusAdmin::MenuItem.new(
  #   key: :overview,
  #   position: 80
  # )
  # render component("layout/navigation/item", item: item)
  # ```
  #
  # @param store_name text
  # @param store_url url
  # @param logo_path text { description: "Asset path to the store logo" }
  def overview(store_name: "Solidus store", store_url: "https://example.com", logo_path: SolidusAdmin::Config.logo_path)
    store = Struct.new(:name, :url).new(store_name, store_url)

    render current_component.new(
      store: store,
      logo_path: logo_path,
    )
  end
end
