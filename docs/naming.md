# Naming Conventions

> Naming conventions for files, folders, and other assets.

## Contents

- [Naming Conventions](#naming-conventions)
  - [Contents](#contents)
  - [Images](#images)
    - [Company](#company)
    - [Image Type](#image-type)
    - [Image Classification](#image-classification)
    - [Foreground Color](#foreground-color)
    - [Background Color](#background-color)
    - [Dimensions](#dimensions)
    - [Extension](#extension)
  - [Examples](#examples)

## Images

Images should be named in the following format:

```text
<company>-<imagetype>-<imageclassification>-<foregroundcolor>-<backgroundcolor> (<width>x<height>).<extension>
```

### Company

The company name should be the name of the company that the image is being created for.

If the image is not being created for a specific company, the company name should be `generic`.

By default, the company name should be `noclocks`.

### Image Type

The image type should be the type of image that is being created.

The following are examples of possible image types:

- `logo`
- `icon`
- `splash`
- `background`
- `button`
- `banner`
- `poster`
- `card`
- `avatar`
- `thumbnail`
- `profile`
- `cover`
- `header`
- `footer`

### Image Classification

The image classification should be the classification of the image that is being created.

The following are examples of possible image classifications:

Main vs. Alt:

- `main`
- `alt`

Primary vs. Secondary vs. Tertiary:

- `primary`
- `secondary`
- `tertiary`

Dark vs. Light:

- `dark`
- `light`

Positive vs. Negative vs. Neutral:

- `positive`
- `negative`
- `neutral`

Mono(chromatic) vs. Duo(chromatic) vs. Tri(chromatic):

- `mono`
- `duo`
- `tri`

Vertical vs. Horizontal:

- `vertical`
- `horizontal`

Standard vs. Wide vs. Tall:

- `standard`
- `wide`
- `tall`

Square vs. Round:

- `square`
- `round`

Sharp vs. Soft vs. Flat:

- `sharp`
- `soft`
- `flat`

Gradient vs. Pattern vs. Texture:

- `gradient`
- `pattern`
- `texture`

Others:

- `solid`
- `outline`
- `fill`
- `stroke`
- `shadow`
- `glow`
- `shine`
- `gloss`
- `matte`
- `metal`

### Foreground Color

The foreground color should be the color of the image's content (i.e. the color of the logo, icon, text, etc.).

The foreground color should be specified using its *name* (e.g. `white`, `black`, `blue`, etc.).

At No Clocks, we primarilly only use the following colors:

- `white`
- `black`
- `gray`
- `red`
- `green`
- `blue`

### Background Color

The background color should be the color of the image's background.

If the image has a transparent background, the background color should be `transparent`.

The background color should be specified using its *name* (e.g. `white`, `black`, `blue`, etc.).

At No Clocks, we primarilly only use the following colors:

- `transparent`
- `white`
- `black`

### Dimensions

The dimensions should be the width and height of the image in pixels.

The dimensions should be specified by wrapping the `<width>x<height>` in parenthesis and placed at the end of the file name right before the extension (e.g. `(1920x1080).png`).

If the dimensions are excluded from the file name, this indicates one of two things:

- The image is a vector image (e.g. SVG) and does not have a fixed width.
- That file is the "default" size for that image type.

For example, the `noclocks-logo-main` has two variants based off the colors:

- `noclocks-logo-main-white-transparent.png`
- `noclocks-logo-main-black-transparent.png`

The default dimensions for the `noclocks-logo-main` is `320x320` pixels, but the ` (320x320)` is not included in the file name, because it is the default size.

In scenarios like this one, ensure that both of the image files are the same size, otherwise include the dimensions in the file name.

### Extension

The extension should be the file extension of the image.

We primarilly use the following file extensions:

- `png`: Portable Network Graphics
- `jpg` or `jpeg`: Joint Photographic Experts Group
- `gif`: Graphics Interchange Format
- `svg`: Scalable Vector Graphics
- `webp`: Web Picture
- `avif`: AV1 Image File Format
- `ico`: Icon
- `pdf`: Portable Document Format

On rare occasions, we may also use the following file extensions:

- `eps`: Encapsulated PostScript
- `ai`: Adobe Illustrator
- `psd`: Photoshop Document
- `xd`: Adobe XD Document
- `sketch`: Sketch Document

## Examples

A main logo for No Clocks with a white foreground and a transparent background at 512x512 pixels in PNG format should be named:

```text
noclocks-logo-main-white-transparent (512x512).png
```

Breakdown:

- Company: `noclocks`
- Image Type: `logo`
- Image Classification: `main`
- Foreground Color: `white`
- Background Color: `transparent`
- Dimensions: `512x512`
- Extension: `png`

A secondary icon for a generic company with a black foreground and a white background at 256x256 pixels in SVG format should be named:

```text
generic-icon-secondary-black-white (256x256).svg
```

Breakdown:

- Company: `generic`
- Image Type: `icon`
- Image Classification: `secondary`
- Foreground Color: `black`
- Background Color: `white`
- Dimensions: `256x256`
- Extension: `svg`
