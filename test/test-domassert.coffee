assert = require 'assert'
require '../domassert'

describe 'domassert', ->
  xml = '<group><item>apple</item><item>pear</item><item id="orangeId">orange</item></group>'
  describe 'hasTag', ->
    
    it "will not fail if xpath matches at least one node", ->
      assert.hasTag xml, '//item'

    it "will fail if xpath does not match a node", ->
      assert.throws (() -> assert.hasTag xml, '//items'), Error

  describe 'hasTagWithContent', ->

    it "will not fail if xpath matches at least one node with the given content", ->
      assert.hasTagWithContent xml, '//item', 'orange'
    
    it "will fail if xpath matches but no nodes have given content", ->
      assert.throws (() -> assert.hasTagWithContent xml, '//item[@id="orangeId"]', 'apple'), Error
 
