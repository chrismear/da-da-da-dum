require 'digest/sha1'

class Dum < ActiveRecord::Base
  before_create :assign_code
  
  def assign_code
    self.code = Dum.generate_code
  end
  
  def self.generate_code
    Digest::SHA1.hexdigest( Time.now.to_s.split(//).sort_by {rand}.join )[0..7]
  end
  
  def to_param
    self.code
  end
end
