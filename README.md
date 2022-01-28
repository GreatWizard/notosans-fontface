# Noto Sans Font Face

[![Build Status](https://github.com/GreatWizard/notosans-fontface/workflows/CI/badge.svg)](https://github.com/GreatWizard/notosans-fontface/actions)
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

ℹ️ Modern packages references only `woff2` font files.

### Packages

Packages are ready-to-use `css`, `less`, `scss` and `styl` files.

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

There are also the modern variation that references only `woff2` font files:

- `css/notosans-fontface-modern.css` - modern essential package compiled to CSS
- `css/notosans-fontface-modern.min.css` - modern essential package minified to CSS
- `scss/notosans-fontface-modern.scss` - modern essential package in SCSS
- `less/notosans-fontface-modern.less` - modern essential package in LESS

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
- There are also the modern variation that references only `woff2` font files:

- `css/notosans-fontface-modern-allweight.css` - modern all-weight package compiled to CSS
- `css/notosans-fontface-modern-allweight.min.css` - modern all-weight package minified to CSS
- `scss/notosans-fontface-modern-allweight.scss` - modern all-weight package in SCSS
- `less/notosans-fontface-modern-allweight.less` - modern all-weight package in LESS

### Custom

It is possible to make your own set of Noto Sans fonts and your own fonts as well by using LESS, SCSS or Stylus mixins provided in this project,

When you use the `fontface` or `notosans-fontface` mixins, you need to provide all `.eot`, `.woff2`, `.woff`, `.ttf` and `.svg` files in the configured directory.
If you use the modern variation `fontface-modern` or `notosans-fontface-modern` mixins, you only need to provide `.woff2` files in the configured directory.

About the `notosans-fontface` or `notosans-fontface-modern` mixins, you can redefine the `notosans-fontface-path` variable.

#### LESS Mixins

```less
// my-website/style.less
@notosans-fontface-path: "fonts/Noto/";
@import "notosans-fontface/less/mixins";

.notosans-fontface("Regular", 400, normal);
.notosans-fontface("Italic", 400, italic);
.notosans-fontface("Bold", 700, normal);
.notosans-fontface("BoldItalic", 700, italic);

// .notosans-fontface-modern("Regular", 400, normal);
// .notosans-fontface-modern("Italic", 400, italic);
// .notosans-fontface-modern("Bold", 700, normal);
// .notosans-fontface-modern("BoldItalic", 700, italic);

.fontface("Noto Sans CJK JP", "fonts/JP/", "NotoSansCJKjp", "Regular", 400, normal);
.fontface("Noto Sans CJK JP", "fonts/JP/", "NotoSansCJKjp", "Bold", 700, normal);

// .fontface-modern("Noto Sans CJK JP", "fonts/JP/", "NotoSansCJKjp", "Regular", 400, normal);
// .fontface-modern("Noto Sans CJK JP", "fonts/JP/", "NotoSansCJKjp", "Bold", 700, normal);

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

// @include notosans-fontface-modern("Regular", 400, normal);
// @include notosans-fontface-modern("Italic", 400, italic);
// @include notosans-fontface-modern("Bold", 700, normal);
// @include notosans-fontface-modern("BoldItalic", 700, italic);

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

// @include fontface-modern(
//   "Noto Sans CJK JP",
//   "fonts/JP/",
//   "NotoSansCJKjp",
//   "Regular",
//   400,
//   normal
// );
// @include fontface-modern(
//   "Noto Sans CJK JP",
//   "fonts/JP/",
//   "NotoSansCJKjp",
//   "Bold",
//   700,
//   normal
// );

body {
  font-family: "Noto Sans", "Noto Sans CJK JP", sans-serif;
}
```

#### Stylys Mixins

```styl
// my-website/style.styl
$notosans-fontface-path = "fonts/Noto/"
@import "notosans-fontface/styl/mixins"

notosans-fontface("Regular", 400, normal)
notosans-fontface("Italic", 400, italic)
notosans-fontface("Bold", 700, normal)
notosans-fontface("BoldItalic", 700, italic)

// notosans-fontface-modern("Regular", 400, normal)
// notosans-fontface-modern("Italic", 400, italic)
// notosans-fontface-modern("Bold", 700, normal)
// notosans-fontface-modern("BoldItalic", 700, italic)

fontface(
  "Noto Sans CJK JP",
  "fonts/JP/",
  "NotoSansCJKjp",
  "Regular",
  400,
  normal
)
fontface(
  "Noto Sans CJK JP",
  "fonts/JP/",
  "NotoSansCJKjp",
  "Bold",
  700,
  normal
)

// fontface-modern(
//   "Noto Sans CJK JP",
//   "fonts/JP/",
//   "NotoSansCJKjp",
//   "Regular",
//   400,
//   normal
// )
// fontface-modern(
//   "Noto Sans CJK JP",
//   "fonts/JP/",
//   "NotoSansCJKjp",
//   "Bold",
//   700,
//   normal
// )

body {
  font-family: "Noto Sans", "Noto Sans CJK JP", sans-serif
}
```
