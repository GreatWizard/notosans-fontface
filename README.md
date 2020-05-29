# Noto Sans Font Face

[![Build Status](https://travis-ci.com/GreatWizard/notosans-fontface.svg?branch=master)](https://travis-ci.com/GreatWizard/notosans-fontface)
[![License: Apache 2.0](https://img.shields.io/github/license/GreatWizard/notosans-fontface)](https://github.com/GreatWizard/notosans-fontface/blob/master/LICENSE.txt)
[![Liberapay](http://img.shields.io/liberapay/patrons/GreatWizard.svg?logo=liberapay)](https://liberapay.com/GreatWizard/)

A simple package providing the [Noto Sans](https://www.google.com/get/noto/) font face.

The fonts are available in the `.eot`, `.woff2`, `.woff`, `.ttf` and `.svg` formats in order to be compliant with all browsers (from IE6/very-old-iOS to modern browsers).

## Prerequisites

- [NodeJS](http://nodejs.org/),
- [NPM](https://www.npmjs.com/) or [Yarn](https://yarnpkg.com/) or [Bower](http://bower.io/).

## Installation

```sh
# Install via npm
npm install notosans-fontface --save

# Install via yarn
yarn add notosans-fontface

# Install via bower
bower install notosans-fontface --save
```

## Usage

For each font you want to use, you need to copy the fonts from the `fonts` directory of this project.

By example, for the `NotoSans Regular` font, required files are:

- `NotoSans-Regular.eot`
- `NotoSans-Regular.woff2`
- `NotoSans-Regular.woff`
- `NotoSans-Regular.ttf`
- `NotoSans-Regular.svg`

### Packages

Packages are ready-to-use `css`, `less` and `scss` files.

For each package, you need to provides all `.eot`, `.woff2`, `.woff`, `.ttf` and `.svg` font files in the configured directory.

If you are using the LESS or SCSS package file, you can override the `notosans-fontface-path` variable before the import of notosans-fontface.
This variable configures the directory where the fonts are stored, the default value is `../fonts`.

```less
// my-website/style.less
@notosans-fontface-path: "fonts/Noto/";
@import "notosans-fontface/less/notosans-fontface";

body {
  font-family: "Noto Sans", sans-serif;
}
```

```scss
// my-website/style.scss
$notosans-fontface-path: "fonts/Noto/";
@import "notosans-fontface/scss/notosans-fontface";

body {
  font-family: "Noto Sans", sans-serif;
}
```

#### Essential Package

The "Essential" package contains the minimum Noto Sans fonts to render your page.

This package contains the following fonts:

- NotoSans Regular
- NotoSans Italic
- NotoSans Bold
- NotoSans BoldItalic

The available files are:

- `css/notosans-fontface.css` - essential package compiled to CSS
- `css/notosans-fontface.min.css` - essential package minified to CSS
- `scss/notosans-fontface.scss` - essential package in SCSS
- `less/notosans-fontface.less` - essential package in LESS

#### All-weight Package

The "All weight" package contains all the normal Noto Sans fonts.

This package contains the following fonts:

- NotoSans Thin
- NotoSans ThinItalic
- NotoSans ExtraLight
- NotoSans ExtraLightItalic
- NotoSans Light
- NotoSans LightItalic
- NotoSans Regular
- NotoSans Italic
- NotoSans Medium
- NotoSans MediumItalic
- NotoSans SemiBold
- NotoSans SemiBoldItalic
- NotoSans Bold
- NotoSans BoldItalic
- NotoSans ExtraBold
- NotoSans ExtraBoldItalic
- NotoSans Black
- NotoSans BlackItalic

The available files are:

- `css/notosans-fontface-allweight.css` - all-weight package compiled to CSS
- `css/notosans-fontface-allweight.min.css` - all-weight package minified to CSS
- `scss/notosans-fontface-allweight.scss` - all-weight package in SCSS
- `less/notosans-fontface-allweight.less` - all-weight package in LESS

### Custom

It is possible to make your own set of Noto Sans fonts and your own fonts as well by using LESS or SCSS mixins provided in this project,

When you use the `fontface` mixin or `notosans-fontface` mixin, you need to provide all `.eot`, `.woff2`, `.woff`, `.ttf` and `.svg` in the configured directory.
About the `notosans-fontface` mixin, you can redefine the `notosans-fontface-path` variable.

#### LESS Mixins

```less
// my-website/style.less
@notosans-fontface-path: "fonts/Noto/";
@import "notosans-fontface/less/mixins";

.notosans-fontface("Regular", 400, normal);
.notosans-fontface("Italic", 400, italic);

.notosans-fontface("Bold", 700, normal);
.notosans-fontface("BoldItalic", 700, italic);

.fontface("Noto Sans CJK JP", "fonts/JP/", "NotoSansCJKjp", "Regular", 400, normal);
.fontface("Noto Sans CJK JP", "fonts/JP/", "NotoSansCJKjp", "Bold", 700, normal);

body {
  font-family: "Noto Sans", "Noto Sans CJK JP", sans-serif;
}
```

#### SCSS Mixins

```scss
// my-website/style.scss
$notosans-fontface-path: "fonts/Noto/";
@import "notosans-fontface/scss/mixins";

@include notosans-fontface("Regular", 400, normal);
@include notosans-fontface("Italic", 400, italic);

@include notosans-fontface("Bold", 700, normal);
@include notosans-fontface("BoldItalic", 700, italic);

@include fontface(
  "Noto Sans CJK JP",
  "fonts/JP/",
  "NotoSansCJKjp",
  "Regular",
  400,
  normal
);
@include fontface(
  "Noto Sans CJK JP",
  "fonts/JP/",
  "NotoSansCJKjp",
  "Bold",
  700,
  normal
);

body {
  font-family: "Noto Sans", "Noto Sans CJK JP", sans-serif;
}
```
