(function() {
  var Dom, assert, select;

  assert = require('assert');

  select = require('xpath.js');

  Dom = require('xmldom').DOMParser;

  assert.hasTag = function(xml, xpath, message) {
    var doc, elements;
    doc = new Dom().parseFromString(xml);
    elements = select(doc, xpath);
    if (elements[0] === void 0) {
      throw new Error(message || ("XPath '" + xpath + "' was not found in the document."));
    }
  };

  assert.hasTagWithContent = function(xml, xpath, expected, message) {
    var doc, element, elements, foundMatch, _i, _len;
    doc = new Dom().parseFromString(xml);
    elements = select(doc, xpath);
    if (elements[0] === void 0) {
      throw new Error(message || ("XPath '" + xpath + "' was not found in the document."));
    }
    foundMatch = false;
    for (_i = 0, _len = elements.length; _i < _len; _i++) {
      element = elements[_i];
      if (expected === element.textContent) foundMatch = true;
    }
    if (!foundMatch) {
      throw new Error(message || ("XPath '" + xpath + "' with content '" + expected + "' was not found in the document."));
    }
  };

}).call(this);
