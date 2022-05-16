class CreateJoinTableUsersAsignaturas < ActiveRecord::Migration[7.0]
  def change
  #generado automaticamente al crear el metodo, da un error al migrar:
    #create_join_table :users, :asignaturas do |t|
     # t.references :user, null: false, foreign_key: true
     # t.references :asignatura, null: false, foreign_key: true
     
  #se corrige con:    
     create_join_table :users, :asignaturas, column_options: { null: false, foreign_key: true} do |t|
      t.index [:user_id, :asignatura_id]
      t.index [:asignatura_id, :user_id]
     end
  end
end
