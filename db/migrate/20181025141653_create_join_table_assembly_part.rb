class CreateJoinTableAssemblyPart < ActiveRecord::Migration[5.2]
  def change
    create_join_table :assemblies, :parts do |t|
       t.index [:assembly_id, :part_id]
    end
  end
end
