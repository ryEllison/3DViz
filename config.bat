::.bat executable for sys configuration
::echo off to preclude command-line verbosity
@echo off

::dir management
setx path "%path%;%CD%/env/distro/R/win-library/3.6"
echo:
set srcDir=%CD%
cd "./env/distro/R/R-3.6.2/bin"

::configure
echo ~! Configuring local environment !~
echo:
Rscript %srcDir%/env/config.R %srcDir%