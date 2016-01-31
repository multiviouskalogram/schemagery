class Schemagery::SchemageryController < ApplicationController
  layout false
  def draw
    @tables = ActiveRecord::Base.connection.tables
  end

end
