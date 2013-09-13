clean = (string_to_clean) ->
  result = string_to_clean.replace /[\s\d\@\.]+/g, ""


describe 'String Cleaner', ->
  it 'removes all numeric values', ->
    clean('Daclin123').should.equal 'Daclin'

  it 'removes all the whitespace chars', ->
    clean('Daclin Woods').should.equal 'DaclinWoods'

  it 'removes all special characters', ->
    clean('Daclin@Woods.com').should.equal 'DaclinWoodscom'