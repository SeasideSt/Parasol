# Parasol

Parasol (full name “Beach Parasol”) is a Pharo Smalltalk framework to automate web browsers. It's particularly useful to write automated tests for Seaside web applications. Its design and implementation are based on the Java Selenium WebDriver API.

# Example

Here's a straightforward annotated example of using Parasol to automate a search for “Pharo” on Wikipedia:
```Smalltalk
"Open a web browser on the English-language Wikipedia home page."
driver := BPRemoteWebDriver withCapabilities: BPDesiredCapabilities chrome.
driver get: 'http://en.wikipedia.org/'.

"Click on the search box and type in 'Pharo' followed by a press of the Return key."
(driver findElementByID: 'searchInput') click.
driver getKeyboard sendKeys: ('Pharo' , (String with: BPKeys return)).

"Get the text of the article's first paragraph and show it on the transcript."
Transcript show: ((driver findElementByID: 'mw-content-text') findElementByTagName: 'p') getText.

"Tell the browser to quit."
driver quit.
```

# ESUG 2013 Presentation

A presentation about Beach Parasol was given at the ESUG 2013 conference, a [video is available on YouTube](https://www.youtube.com/watch?v=CoJ-Wnno6TY).

# Hands-On

To try Beach Parasol, you'll need a few things:
- A Pharo image (Pharo 4.0 #40625, or Pharo 5)
- The Chrome web browser
- The [Selenium standalone server](http://docs.seleniumhq.org/download/) ("selenium-server-standalone-3.0.1.jar" at the time of writing)
- The [Chromedriver](https://sites.google.com/a/chromium.org/chromedriver/) for your operating system, you should unzip it and place it in the same folder as the Selenium server JAR.
- To run the Selenium server, execute the following on the command line:
`java -Dwebdriver.chrome.driver=chromedriver -jar selenium-server-standalone-3.0.1.jar`

To load the Parasol package into the Pharo image:
```Smalltalk
Installer ss3
    project: 'Parasol';
    install: 'ConfigurationOfParasol'.
((Smalltalk at: #ConfigurationOfParasol) project version: #development) load: 'dev'.
WAWebServerAdaptor startOn: 8080.
```

Note: the above loads from the main repository at [SS3](http://ss3.gemstone.com/ss/Parasol.html), you can also load from the GitHub repository but keep in
mind that it may not be up-to-date:
```Smalltalk
Metacello new
    baseline: 'Parasol';
    repository: 'github://SeasideSt/Parasol/repository';
    load: 'tests'.
ZnZincServerAdaptor startOn:8080.
```

For examples, take a look at the tests in `BPRemoteWebDriverTestCase` and `BPWebElementTestCase`.

# Build Status
 - [![master branch:](https://travis-ci.org/SeasideSt/Parasol.svg?branch=master)](https://travis-ci.org/SeasideSt/Parasol)
