## Sources
 1. A [presentation in 2016](https://www.rstudio.com/resources/videos/modularizing-shiny-app-code/)
     by Garrett from RStudio. [This video](https://www.rstudio.com/resources/webinars/understanding-shiny-modules/)
     has similar details as it was used to formally introduce Shiny modules.
    - [Contains PDF of presentation](https://github.com/garrettgman/webinars/tree/master/19-Understanding-modules)
 2. [Introduction to moduels](https://shiny.rstudio.com/articles/modules.html): I was able to relate to
    this article much more after going through one of the videos listed under the presentation above.
 3. Functions for modularizing Shiny apps
    - [callModule](https://shiny.rstudio.com/reference/shiny/1.3.2/callModule.html)
    - [NS](https://shiny.rstudio.com/reference/shiny/1.3.2/NS.html)
 4. [Communication between modules](https://shiny.rstudio.com/articles/communicate-bet-modules.html)


## Things to remember
- using functions in a Shiny app can solve almost every problem as Shiny was
  designed to work with functions
- Input and output IDs in Shiny apps share a global namespace, meaning,
  **each ID must be unique across the entire app**. This means that you
  need to ensure that none of the IDs collide.
- **Shiny modules** adds namespacing to Shiny UI and server logic.
  *Namespaces* is the traditional solution to the problem of
  *name collisions* in Computer science.
- **A Shiny module is a piece of a Shiny app. It can’t be directly run,
  as a Shiny app can. Instead, it is included as part of a larger app
  (or as part of a larger Shiny module–they are composable).**
- Why we want to use modules?
  * Quickly **reuse** the same code in different apps, or multiple times in the same app.
  * Divide code into separate modules (**isolate**) that can be reasoned about independently
- Module functions:
  * become best friends with `NS()` and `callModule()`
- Load your module UI and server logic functions before they are called
  in the ui and server SHiny functions.
  In [this example](app_ex3.R) they're called at the begining of the file,
  before defining our ui and server functions.
- Shiny modules are functions and they should be thought of that way whenever
  you fell stuck trying to make things work
- use `tagList()` if you want to return a UI fragment that consists of
  multiple UI objects; if you were just returning a `div` or some specific
  input, you could skip `tagList()`
- if a module needs to access an input that isn’t part of the module, the
  containing app should pass the input value wrapped in a reactive expression i.e. reactive()
