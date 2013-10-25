class String
  def mark_fixme!
    # skip if it is already marked or its an alias
    if self =~ /g FIXME/ || self =~ /\*([a-z]*(\_)?)*/
      return self
    end

    self.replace("#{self} g FIXME")
  end
end
