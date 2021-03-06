# User Quick Start Guide

## Create DOE Prototype Building Measure

Starting with OpenStudio 1.11.3, the "Create DOE Prototype Building" Measure is available on BCL and can be used like any other Measure.

1. Components & Measures > Find Measures, download Whole Building > Space Types > Create DOE Prototype Building
2. Components & Measures > Apply Measure Now > Whole Building > Space Types > Create DOE Prototype Building
2. Pick the building type/climate zone/vintage
3. Run

## Using OpenStudio-Standards in Measures
**This gem is included with the OpenStudio installer**.  All you need to do is add `require openstudio-standards` to your `measure.rb` file and you will have access to the methods in this gem:
    
    class MyMeasureName < OpenStudio::Ruleset::ModelUserScript  
	  
     require 'openstudio-standards'
     ...

## Examples

### TODO - Put examples of common use cases here

## Installing OpenStudio-Standards from RubyGems
If you want to install the most current release of this gem from RubyGems.org

1. Install the [latest version of OpenStudio](https://www.openstudio.net/downloads).  Minimum supported version is 1.9.0. 
2. **On Windows**, install [Ruby 2.2](http://rubyinstaller.org/) (`ruby -v` from command prompt to check installed version).  
3. **On Mac** install Ruby 2.2 using [rbenv](http://octopress.org/docs/setup/rbenv/) (`ruby -v` from command prompt to check installed version).
4. **On Windows**, Start > right click Computer > Properties > Advanced system settings > Environment variables.  In the User variables section (top) add a new Variable with the name `GEM_PATH` and the Value `C:\Ruby22-x64\lib\ruby\gems\2.2.0`.
6. `gem install openstudio-standards`

Now, your installed versions of OpenStudio will have access to this gem.  If you install new versions of OpenStudio, they will also have access to this gem.

## Installing OpenStudio-Standards from Source Code
If you want access to a newer version of the gem than is available on RubyGems.org

1. Install the [latest version of OpenStudio](https://www.openstudio.net/downloads).  Minimum supported version is 1.9.0. 
2. **On Windows**, install [Ruby 2.2](http://rubyinstaller.org/) (`ruby -v` from command prompt to check installed version).  
3. **On Mac** install Ruby 2.2 using [rbenv](http://octopress.org/docs/setup/rbenv/) (`ruby -v` from command prompt to check installed version).
4. **On Windows**, Start > right click Computer > Properties > Advanced system settings > Environment variables.  In the User variables section (top) add a new Variable with the name `GEM_PATH` and the Value `C:\Ruby22-x64\lib\ruby\gems\2.2.0`.
5. [Download the source code](https://github.com/NREL/openstudio-standards/archive/master.zip) or [clone the source code](https://github.com/NREL/openstudio-standards.git) using [Git](https://git-scm.com/).
5. In a command prompt, navigate to the `openstudio-standards/openstudio-standards` directory of the source code.
5. `gem build openstudio-standards.gemspec`   ENTER to build the gem.
6. `gem install openstudio-standards-0.1.X.gem`   ENTER to install the gem.

Now, your installed versions of OpenStudio will have access to this gem.  If you install new versions of OpenStudio, they will also have access to this gem.

### Updating the Gem

If changes are made to the gem source code and you want to use those changes, repeat steps 5-8 of the installation instructions.


