class SidebarTableSection < Prime::TableSection
  def sidebar_items
    [
      {title: 'Home', action: :open_home},
      {title: 'Columns', action: :open_columns}
    ]
  end

  def table_data
    sidebar_items.map do |model|
      SidebarActionSection.new(model: model)
    end
  end

  def on_click(table, index)
    section = data[index.row]
    return false if !section || !section.model[:action]
    screen.send section.model[:action].to_sym
  end
end