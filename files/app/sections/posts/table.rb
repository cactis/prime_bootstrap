class PostsIndexTableSection < Prime::TableSection
  def table_data
    Post.all.map do |model|
      PostsIndexCellSection.new(model: model)
    end
  end

  def on_click(table, index)
    section = data[index.row]
    screen.open_screen 'posts#show', params: { model: section.model }
  end
end