assert = require 'assert'
select = require('xpath.js')
Dom = require('xmldom').DOMParser

assert.hasTag = (xml, xpath, message) ->
  doc = new Dom().parseFromString(xml)
  elements = select(doc, xpath)
  if elements[0] is undefined
    throw new Error message || "XPath '#{xpath}' was not found in the document."

assert.hasTagWithContent = (xml, xpath, expected, message) ->
  doc = new Dom().parseFromString(xml)
  elements = select(doc, xpath)
  if elements[0] is undefined
    throw new Error message || "XPath '#{xpath}' was not found in the document."
  foundMatch = false
  for element in elements
    if expected is element.textContent
      foundMatch = true
  if not foundMatch
    throw new Error message || "XPath '#{xpath}' with content '#{expected}' was not found in the document."
 
