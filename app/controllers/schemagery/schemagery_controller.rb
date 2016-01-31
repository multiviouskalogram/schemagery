class Schemagery::SchemageryController < ApplicationController
  layout false
  def draw
    @schema_array = get_all_model_names
  end



  def get_all_model_names

    Dir.foreach("#{Rails.root}/app/models") { |f| require f if f =~ /.*\.rb/ }
    tables = ActiveRecord::Base.connection.tables
    model_names = []
    ActiveRecord::Base.connection.tables.reject{|i| i == "schema_migrations"}.map do |t|
      model_name = t.classify
        if ActiveRecord::Base.const_defined?(model_name.to_s) && Kernel.const_get(model_name.to_s)
          model_names << model_name
        end
    end
    model_names
    schema_objs_array = []
    lil_hash = {tables: tables, model_names: model_names}
    lil_hash[:model_names].each do |m|
      if Object.const_get(m).column_names
        schema_objs_array << {table_name: Object.const_get(m).table_name, db_field_names: Object.const_get(m).column_names}
      end
    end
    schema_objs_array

  end

end
