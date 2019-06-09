# Shiny modules: hands-on introduction 
Using the resources [here](https://github.com/garrettgman/webinars/tree/master/19-Understanding-modules)
to gain a deeper understanding of Shiny modules.

Reusing logic via modularity is something every major web framework already has 
in one way or another. For example, [Blueprints](http://flask.pocoo.org/docs/0.12/blueprints/)
is the way to go if you decide to use Flask.


For this example the Gapminder dataset is used. With just one Shiny module, we
are able to explore the data by continents.
By scoping the repeated logic within a module, code duplication is avoived
since the data used on each tab differs by the filtering argument used.

## Setup
 - Install RStudio
 - Install _shiny_ package

Note: file names that begin with "app_ex" are complete examples that
should be run independently of the main application.