class OligarchTable < TableCloth::Base
  column :name, :rank

  column :age do |oligarch|
    oligarch.deceased ? 'deceased' : oligarch.age
  end

  column :net_worth do |oligarch|
    if oligarch.net_worth
      "$#{number_to_human(oligarch.net_worth)}"
    else
      ""
    end
  end

  column :misc do |oligarch|
    if oligarch.properties["incarcerated"]
      "incarcerated"
    else
      ""
    end
  end

  if false
    column :show, if: false do |oligarch|
      link_to 'Show', oligarch_path(oligarch)
    end

    column :edit do |oligarch|
      link_to 'Edit', edit_oligarch_path(oligarch)
    end
  end

  # To include actions on this table, uncomment this line
  # include TableCloth::Extensions::Actions

  # Define columns with the #column method
  # column :name, :email

  # Columns can be provided a block
  #
  # column :name do |object|
  #   object.downcase
  # end
  #
  # Columns can also have conditionals if you want.
  # The conditions are checked against the table's methods.
  # As a convenience, the table has a #view method which will return the current view context.
  # This gives you access to current user, params, etc...
  #
  # column :email, if: :admin?
  #
  # def admin?
  #   view.current_user.admin?
  # end
  #
  # Actions give you the ability to create a column for any actions you'd like to provide.
  # Pass a block with an arity of 2, (object, view context).
  # You can add as many actions as you want.
  # Make sure you include the actions extension.
  #
  # actions do
  #   action {|object| link_to "Edit", edit_object_path(object) }
  #   action(if: :valid?) {|object| link_to "Invalidate", invalidate_object_path(object) }
  # end
  #
  # If action provides an "if:" option, it will call that method on the object. It can also take a block with an arity of 1.
end
