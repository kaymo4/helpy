class CosmicReportsController < ApplicationController

  def standard_parts
    @standard_parts = StandardPart.all
    respond_to do |format|
      format.html {}
    end

  end

  def fractions_lessons_6NS
    # duplicate of controller css_math and shopw index - restricted to domain 6NS
    #get all ccss standards
    @ccss_maths = CcssMath.where(domain_id: 'NS').where(grade_id: '6')
    # get intelligence, which standard has parts and how many
    std_parts = StandardPart.where('nb_of_parts > 0').pluck(:ccss_db_id, :nb_of_parts)
    # convert the array to hash with key value, key->ccss_db_id, value ->nb_of_parts
    @std_parts_hashes = {}
    std_parts.each { |k, v| @std_parts_hashes[k] = v }
    # get all accents with parts
    # used scope in model
    respond_to do |format|
      format.html {}
    end

  end

end

