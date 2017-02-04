HU2K17 UI Assignment
======================


## Getting Started

Setup JS lint
```
npm install jslint
```
Setup SASS lint
```
npm install sass-lint
```


clone the repository
```
git clone git@git.hashedin.com:hemny.singh/hu2k17-ui-track.git
```

Run bundler to install the dependencies.
```
bundler install
```

Run the development server
```
jekyll serve
```

Open [http://localhost:4000/](http://localhost:4000/) to browse the website

## Developing Pages
You should familiarise yourself with jekyll and jekyll-assets, but here is a quick cheatsheet:


### HTML 
1. Include files go under `_includes`
1. To include a file, use `{% include head.html %}`
1. To load css files, use `{% css main %}`. `.css` extension is not needed
1. To load javascript files, use {% js vendor %}. `.js` extension is not needed

### CSS
1. CSS fragments/scss files go under `_assets/styles`
1. Main css files - i.e. files that are combined and included in html files - go under `_assets/css`. As of now, we only have two css files - `main.scss` and `vendor.scss`
1. Use the syntax `{% css main %}` to include a css file within a HTML file. See `_includes/head.html` for an example

### Custom Javascript
1. Put custom javascript files under `_assets/scripts`
1. Include your custom javascript in `_assets/scripts/main.js` using the `//= require menu.js` syntax
1. All files in `main.js` are bundled, minified and versioned automatically
1. Include main.js in your html using the `{% js main %}` syntax. `.js` extension is not needed

### Third Party Javascript
1. Add third party javascript files under `_assets/libs`
1. Include the javascript in the file `_assets/scripts/vendor.js`

### Images
1. Add images under `img` directory
1. Use an absolute path, not a relative path. Use `/img/someimage.png`, not `img/someimage.png`. Note the leading slash.
1. **NOTE: ** Never overwrite/update existing images. Images are cached for a year, so they will not be updated. If you want to update an image, create a new one and use it instead.

## Working with blogs
See https://jekyllrb.com/docs/posts/ 


## Deploying

### Step 0: Configure AWS Credetials
We host the website on S3, so you need AWS credentials to deploy. Request Devops for AWS credentials - you will get a key and secret.

Take the key and secret, and store it in a file `.env` at the root of your project.

```
touch .env
```

Then, edit `.env` and add your credentials

```
AWS_ACCESS_KEY_ID = YOUR-ACCESS-KEY
AWS_SECRET_ACCESS_KEY = YOU-SECRET-ACCESS-KEY
```

**NOTE** Don't share keys.

### Step 1: Preparing the build
1. First, ensure everything is committed and pushed. 
2. The files are generated under the `_site` directory
3. To test the files, run `python -m SimpleHTTPServer` inside the `_site` directory, and test it thoroughly
