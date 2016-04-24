# Parasol

Parasol is a Pharo Smalltalk framework to automate web browsers. It's particularly useful to write automated tests for Seaside web applications. Its design and implementation are based on the Java Selenium WebDriver API.

# Example

Here's a straightforward annotated example of using Parasol to automate a search for “Pharo” on Wikipedia:
```
"Open a web browser on the English-language Wikipedia home page."
driver := BPRemoteWebDriver new.
driver get: 'http://en.wikipedia.org/'.

"Click on the search box and type in 'Pharo' followed by a press of the Return key."
(driver findElementByID: 'searchInput') click.
driver getKeyboard sendKeys: ('Pharo' , (String with: BPKeys return)).

"Get the text of the article's first paragraph and show it on the transcript."
Transcript show: ((driver findElementByID: 'mw-content-text') findElementByTagName: 'p') getText.

"Tell the browser to quit."
driver quit.
```
# Hands-On

To try Beach Parasol, you'll need a few things:
- A Pharo image. We use and test with latest stable Pharo. Or a Squeak image. Tested with 4.4.
- The Firefox web browser
- The Selenium standalone server ("selenium-server-standalone-2.52.0.jar" at the time of writing)
- To run the Selenium server, execute the following on the command line:
`java -jar selenium-server-standalone-2.25.0.jar`

To load the Parasol package into the Pharo image:
```
Gofer new
    url: 'http://ss3.gemstone.com/ss/Parasol';
    package: 'ConfigurationOfParasol';
    load.
((Smalltalk at: #ConfigurationOfParasol) project version: #development) load: 'dev'.
WAKomEncoded startOn: 8080.
Deprecation raiseWarning: false; showWarning: false.
To load the Beach Parasol package into a Squeak image:
Installer ss3
    project: 'Parasol';
    install: 'ConfigurationOfParasol'.
((Smalltalk at: #ConfigurationOfParasol) project version: #development) load: 'dev'.
WAWebServerAdaptor startOn: 8080.
```

For examples, take a look at the tests in `BPRemoteWebDriverTestCase` and `BPWebElementTestCase`.
Note that if you want to use the Chrome web browser, you'll also need the appropriate chromedriver. You should put the unzipped chromedriver in the same directory as your “selenium-server-standalone” jar file.

# Build Status
 - [![master branch:](https://travis-ci.org/SeasideSt/Parasol.svg?branch=master)](https://travis-ci.org/SeasideSt/Parasol)
