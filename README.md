## documentation

### Updating Coull documentation
All documentation can be found in the *content* folder and sub-folders.
The documents are written in a format known as Markdown, which allows simple formatting of plain-text. To see how to add these styles, take a look at the [Markdown Cheat Sheet](https://www.markdownguide.org/cheat-sheet).
To edit a document, simply open the file on Github and click the pencil icon to edit the text.
Once you have made your changes, ask someone in the dev team to push these changes live.

### Dev Instructions for setting up Hugo locally and building the site

The website is built using the static site generator 'Hugo'. Hugo will take all the markdown files, apply any theme formatting and styling and output the HTML files into the `/public` folder.

*To setup Hugo:*

1. Install Hugo via a package manager. For example, on OSX, run `brew install hugo` from the terminal.
2. Clone this repo from github by running `git clone git@github.com:coull/documentation.git` in your desired directory.
3. Navigate to the root directory and run the command `git submodule init` to install the theme, which is a git submodule. Then run `git submodule update` to update the theme to the latest version.
4. Running `hugo` will build the files into the public directory.
4. You can then run a local server by running `hugo server -D` and navigate to localhost:1313 to view the site.

The theme being used is 'Docdockr', all details are in the docdockr/ folder including an example site.
Custom over-rides can be made to the theme by adding the CSS-styles to the `static/css/theme.css` file.