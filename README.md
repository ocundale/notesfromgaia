# Hugo Website Template

Store all content in markdown format within *content/* folder and sub-folders.

Markdown Cheat Sheet](https://www.markdownguide.org/cheat-sheet)

All content can be created/edited in Github, or on your local machine (see below).

Changes will not be pushed to production unless built and pushed up (see makefile instructions).

### Editing docs on your Local machine

The website is built using the static site generator 'Hugo'. Hugo will take all the markdown files, apply any theme formatting and styling and output the HTML files into the `/public` folder.

**To setup Hugo on your local machine:**

1. Install Hugo via a package manager. For example, on OSX, run `brew install hugo` from the terminal.
2. Clone this repo from github by running `git clone xxxxxxxx` in your desired directory.
3. Navigate to the root directory and run the command `git submodule init` to install the theme, which is a git submodule. Then run `git submodule update` to update the theme to the latest version.
4. Running `hugo` will build the files into the public directory.
4. You can then run a local server by running `hugo server -D` and navigate to **localhost:1313** to view the site.


**To push a new build of the site to production:**

There is a Makefile in the root directory, which will handle the build and push any new changes to Github.
1. Make sure you have committed any changes to master and pushed them up.
2. Run the `make` command in terminal and check there are no errors in the output.


**Theme/style changes**

The theme being used is 'Docdock', all details are in the docdock/ folder including an example site.

For details of how to customise the theme, check out http://docdock.netlify.com/. This is the example site, so you can find all the markup in `themes/docdock/exampleSite/`.

Custom over-rides can be made to the theme by adding your CSS-styles to the `static/css/theme.css` file
