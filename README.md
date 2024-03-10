# No Clocks CDN Assets Repository <img align="right" src="https://cdn.jsdelivr.net/gh/noclocks/cdn@main/images/logo/PNG/main-logo-white-transparent.png" height="15%" width="15%">

> [!NOTE]
> Static Asset Content Delivery Network Setup for No Clocks, LLC.

[![Publish](https://github.com/noclocks/cdn/actions/workflows/publish.yml/badge.svg)](https://github.com/noclocks/cdn/actions/workflows/publish.yml)

## Assets

- [brand](./brand/): Brand Kits
- [email](./email/): HTML Email & Email Signature Templates
- [fonts](./fonts/): Typography Fonts
- [images](./images/): Images
  - [featured](./images/featured/): Featured images
  - [icons](./images/icons/): Icons
  - [logo](./images/logo/): Logos
- [public](./public/): Other default "public" assets such as `robots.txt`, etc.
- [scripts](./scripts/): JavaScript Scripts
- [styles](./styles/): CSS/SASS Stylesheets

## Services

- [JSDelivr CDN](https://www.jsdelivr.com/):
  - Root URL: <https://cdn.jsdelivr.net/gh/noclocks/cdn>
    - **Project**: <https://www.jsdelivr.com/package/gh/noclocks/cdn>
    - **Non-Minifed**: <https://cdn.jsdelivr.net/gh/noclocks/cdn@main/{path/to/file}>
    - **Auto-Minified**: <https://cdn.jsdelivr.net/gh/noclocks/cdn@main/{path/to/file.min.[js|css]}>

- [GitHack CDN](https://raw.githack.com/):
  - Root URL: <https://raw.githack.com/noclocks/cdn>
    - **Development:** <https://raw.githack.com/noclocks/cdn/main/{path/to/file}>
    - **Production:** <https://raw.githack.com/noclocks/cdn/{tag}/{file}>

## Example

For example, to utilize the [`md-page.min.js`](scripts/js/md-page.min.js) JavaScript script in an HTML file:

```html
<script src="https://rawcdn.githack.com/noclocks/cdn/main/scripts/js/md-page.min.js"></script><noscript>
```

where the script is being pulled directly from the URL <https://rawcdn.githack.com/noclocks/cdn/main/scripts/js/md-page.min.js>.
