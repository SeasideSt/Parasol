# Parasol

Parasol (full name “Beach Parasol”) is a Smalltalk framework to automate web browsers. It’s particularly useful to write automated tests for [Seaside](https://github.com/SeasideSt/Seaside) web applications. Its design and implementation are based on the [Java Selenium WebDriver API](http://www.seleniumhq.org/projects/webdriver/).


## Example

Here’s a straightforward annotated example. This example uses Parasol to automate a search for “Pharo” on Wikipedia:

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

Check the Hands-On section below to learn how to run the example yourself.


## Introduction Video

On YouTube you can find an [introduction video about Beach Parasol](https://www.youtube.com/watch?v=CoJ-Wnno6TY). The video is a recording of a talk that was given at the ESUG 2013 conference.


## Hands-On

To try Beach Parasol, you'll need to get a few things:

- A [Pharo](http://pharo.org) image
- The [Chrome](https://www.google.com/chrome/) web browser
- The [Selenium standalone server](http://docs.seleniumhq.org/download/) JAR file
- The [Chromedriver](https://sites.google.com/a/chromium.org/chromedriver/) for your operating system

At the time of writing this README, we used Pharo version 5.0 #50766, Chrome version 55.0.2883.95, Selenium server v3.0.1 (“selenium-server-standalone-3.0.1.jar”) and Chromedriver v2.25. If you find things are not working with more recent versions, please do [file an issue](https://github.com/SeasideSt/Parasol/issues).

You should extract the Chromedriver's ZIP file into the directory where you put the Selenium server JAR file. To run the Selenium server, execute the following on the command line:

```bash
java -Dwebdriver.chrome.driver=chromedriver -jar selenium-server-standalone-3.0.1.jar
```

To load the Parasol package into the Pharo image:

```Smalltalk
Metacello new
    baseline: 'Parasol';
    repository: 'github://SeasideSt/Parasol/repository';
    load: 'tests'.
(Smalltalk at: #ZnZincServerAdaptor) startOn: 8080.
```

Now give the Wikipedia example from above a try! For more examples, check the test cases `BPRemoteWebDriverTestCase` and `BPWebElementTestCase`.


## Documentation

If you need more documentation, you can check the [documentation of Parasol’s Java counterpart](http://seleniumhq.github.io/selenium/docs/api/java/). Most classes and methods in Parasol were designed to closely follow their Java counterpart, to make it easier to use its documentation and translate from Java-based examples. Good starting points are the documentation for the [WebDriver](http://seleniumhq.github.io/selenium/docs/api/java/org/openqa/selenium/WebDriver.html) and [WebElement](http://seleniumhq.github.io/selenium/docs/api/java/org/openqa/selenium/WebElement.html) interfaces. They are the counterparts to `BPRemoteWebDriver` and `BPWebElement`.

The [Seaside tutorial offered by the HPI Software Architecture Group](http://www.hpi.uni-potsdam.de/hirschfeld/seaside/tutorial) has a chapter on “Testing Seaside Applications” using Parasol.

## Supported Smalltalk Platforms

The main Smalltalk platform for Parasol is [Pharo](http://pharo.org). Other supported Smalltalk platforms are [GemStone](https://gemtalksystems.com/products/) and [Squeak](http://squeak.org). There was support for [VisualWorks](http://www.cincomsmalltalk.com/main/products/visualworks/) in the past, but this has been removed due to lack of maintenance (see [issue #8](https://github.com/SeasideSt/Parasol/issues/8), let us know if you’re interested in VisualWorks support).


## GitHub versus SS3 Repository

An [older repository for Parasol exists on SqueakSource3](http://ss3.gemstone.com/ss/Parasol.html). This [GitHub repository](https://github.com/SeasideSt/Parasol) is the current development repository, the older SqueakSource3 repository is no longer kept up-to-date.


## Build Status [![master branch:](https://travis-ci.org/SeasideSt/Parasol.svg?branch=master)](https://travis-ci.org/SeasideSt/Parasol/branches)

Parasol’s self-tests are automatically ran on [Travis CI](https://travis-ci.org/SeasideSt/Parasol/branches), the image above shows the status of the latest build of the “master” branch. Please note there's an open issue regarding some of the self-tests failing randomly ([issue #2](https://github.com/SeasideSt/Parasol/issues/2)).


## Related

You might also be interested in:

- [AutomaticParasol](https://github.com/nymch/AutomaticParasol): for running SeleniumIDE-Generated Tests in Pharo Smalltalk (using Parasol).
- [WebDriver](http://smalltalkhub.com/#!/~TorstenBergmann/WebDriver): alternative Pharo WebDriver package described as “based on Parasol but clean room and for Pharo only.”