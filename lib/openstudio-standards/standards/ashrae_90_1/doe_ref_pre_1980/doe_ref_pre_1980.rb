# This class holds methods that apply the "standard" assumptions
# used in the DOE Pre-1980 Reference Buildings to a given model.
class DOERefPre1980 < ASHRAE901
  @@template = 'DOE Ref Pre-1980'
  register_standard @@template
  attr_reader :template

  def initialize
    super()
    @template = @@template
    load_standards_database
  end
end
