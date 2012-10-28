Introduction
-------
A node package with some additional assert methods for testing the DOM

Uses [xmldom](https://github.com/jindw/xmldom) and [xpath.js](https://github.com/yaronn/xpath.js)

Install:
-------
>npm install domassert

Example:
====
```javascript
require('domassert');
xml = '<group><item>apple</item><item>pear</item><item>orange</item></group>'
assert.hasTag(xml, "//item");
assert.hasTagWithContent(xml, "//item", "pear");
```

