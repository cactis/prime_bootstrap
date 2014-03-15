class PostsFormSection < Prime::FormSection
  field :title,
    label: { text: 'Title' },
    input: {
      text: proc { form.model.title },
      placeholder: "Enter title here"
    }

  field :submit, type: :submit,
    button: { title: "Save" },
    action: :on_submit

  field :delete, type: :submit,
    button: {
      title: "Delete",
      background_color: :red
    },
    action: :on_delete,
    if: proc { model.persisted? }

  def on_delete
    model.delete
    screen.close_screen(to_root: true)
  end

  def on_submit
    model.assign_attributes(field_values)
    model.save
    screen.close_screen
  end
end
