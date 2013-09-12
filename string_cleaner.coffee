clean = (string_to_clean) ->
  result = string_to_clean.replace /[0-9]+/, ''


describe 'String Cleaner', ->
  it 'removes all numeric values', ->
    clean('Daclin123').should.equal 'Daclin'

