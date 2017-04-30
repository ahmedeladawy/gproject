class AddOrganizationRefToTechnologies < ActiveRecord::Migration[5.0]
  def change
    add_reference :technologies, :organization, foreign_key: true
  end
end
