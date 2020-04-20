::.bat executable for creation of local server
::echo off to preclude command-line verbosity
@echo off

::dir management
set srcDir=%CD%
cd "./env/distro/R/R-3.6.2/bin"

::create local server
echo ~! Creating local server !~
Rscript %srcDir%/env/helper.R %srcDir%
Rscript %srcDir%/env/launch.R %srcDir%