class CosmicReportsController < ApplicationController


  def standard_parts
    @standard_parts = StandardPart.all
    respond_to do |format|
      format.html {}
    end

  end

end

