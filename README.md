Introduction
-------
Some additional assert methods for testing the DOM

Uses [xmldom](https://github.com/jindw/xmldom) and [xpath.js](https://github.com/yaronn/xpath.js)

Install:
-------
>npm install domassert

Example:
====
```javascript
xml = '<group><item>apple</item><item>pear</item><item id="orangeId">orange</item></group>'
assert.hasTag(xml, "//item");
assert.hasTagWithContent(xml, "//item", "pear");
```

