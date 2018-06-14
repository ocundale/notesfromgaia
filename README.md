### Updating Coull documentation
All documentation can be found in the *content* folder and sub-folders.

The documents are written in a format known as Markdown, which allows simple formatting of plain-text. To see how to add these styles, take a look at the [Markdown Cheat Sheet](https://www.markdownguide.org/cheat-sheet).

To edit a document, simply open the file on Github and click the pencil icon to edit the text.
Once you have made your changes, ask someone in the dev team to push these changes live.


### Editing docs on your Local machine (dev instructions)

The website is built using the static site generator 'Hugo'. Hugo will take all the markdown files, apply any theme formatting and styling and output the HTML files into the `/public` folder.

**To setup Hugo on your local machine:**

1. Install Hugo via a package manager. For example, on OSX, run `brew install hugo` from the terminal.
2. Clone this repo from github by running `git clone git@github.com:coull/documentation.git` in your desired directory.
3. Navigate to the root directory and run the command `git submodule init` to install the theme, which is a git submodule. Then run `git submodule update` to update the theme to the latest version.
4. Running `hugo` will build the files into the public directory.
4. You can then run a local server by running `hugo server -D` and navigate to localhost:1313 to view the site.


**To push a new build of the site to production:**

There is a Makefile in the root directory, which will handle the build and push any new changes to Github.
1. Make sure you have committed any changes to master and pushed them up.
2. Run the `make` command in terminal and check there are no errors in the output.


**Theme changes**

The theme being used is 'Docdock', all details are in the docdock/ folder including an example site.

For details of how to customise the theme, check out http://docdock.netlify.com/. This is the example site, so you can find all the markup in `themes/docdock/exampleSite/`.

Custom over-rides can be made to the theme by adding your CSS-styles to the `static/css/theme.css` file


