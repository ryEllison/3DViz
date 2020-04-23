
<img src="./rmd/fts/hex.png" width="22.5%" height="22.5%" style="display: block; margin: auto;" />

# Summary

3DViz is a dynamic 3D/4D visualization dashboard, written in
[R 3.6.2](https://cran.r-project.org/bin/windows/base/old/3.6.2/) with a
[Shiny](https://shiny.rstudio.com/) backend, that produces publishable
high-dimensional figures.

# Deployed 3DViz

3DViz was deployed using [shiny.io by
Rstudio](https://www.shinyapps.io/), and can be found here:
<https://ryellison.shinyapps.io/3dviz/>.

## Use

Once 3DViz is launched, the user should select a dataset via the browser
button. The data file should be structured such that each column
represents a vector of data. For example:

<img src="./rmd/fts/tbl.png" style="display: block; margin: auto;" />

Once data is loaded, user controls can be manipulated to select vectors
of data to plot, alter characteristics of the plot, and export different
versions as .pdf files.

# Local 3DViz

The local version of 3DViz is pre-packaged with a complete computational
engine. As such, 3DViz can be downloaded, configured, and launched
utilizing an end-user’s local system as its server. Note, there may be
compatibility issues with the native computational engine.

## Download/Configure

3DViz can be downloaded from its
[Github](https://github.com/ryEllison/3DViz) repo. Once downloaded, the
**config.bat** executable should be launched to ensure proper backend
configuration on the user’s local system before use. 3DViz configuration
is only needed once.

## Use

After 3DViz configuration, the application can be launched and used as
follows:

1.  Launch via the **\_init\_.bat** executable
    
      - A terminal will open indicating the creation of a local server
        (“Listening on…”)

2.  After the server is created, an internet browser (e.g., Chrome or
    Firefox) should be opened

3.  **localhost:3838** should be entered as a web address
    
      - This will launch a local version of the Shiny dashboard

4.  A file browser will appear, and the user can navigate to and select
    a **\*.csv** dataset
    
      - The data file should be structured such that each column
        represents a vector of data (see **Deployed 3DViz, Use**)

5.  Once a dataset is selected, 3DViz will load in the data and open
    
      - User controls can be manipulated to select vectors of data to
        plot, alter characteristics of the plot, and export different
        versions as pdf files

## Test

When 3DViz is launched (see **Use**), a file browser will appear. Inside
the file browser should be three toy datasets. The user should select
one of these datasets, plot the data, and export figures as a test of
proper configuration and function of the Shiny dashboard.
