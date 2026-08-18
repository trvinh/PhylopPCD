#' Run PhyloCellulase app
#' @export
#' @return A shiny application - GUI version of PhyloProfile
#' @rawNamespace import(shiny, except = c(dataTableOutput, renderDataTable, markdown))
#' @import BiocStyle
#' @rawNamespace import(bit64, except = c(setdiff, intersect, union, setequal))
#' @import bsplus
#' @importFrom colourpicker colourInput
#' @rawNamespace import(data.table, except = c(first, last, between))
#' @import dplyr
#' @importFrom DT dataTableOutput renderDataTable
#' @importFrom shinycssloaders withSpinner
#' @importFrom shinyjs enable disable reset html toggleState
#' @importFrom shinyFiles shinyDirButton shinyDirChoose parseDirPath
#' @importFrom yaml read_yaml write_yaml
#' @importFrom RCurl url.exists
#' @importFrom htmlwidgets saveWidget
#' @import svglite
#' @import PhyloProfile

runPhylopPCD <- function(){
    appDir <- system.file("PhyloProfile", package = "PhylopPCD")
    if (appDir == "") {
        stop(
            "Could not find apps directory. Try re-installing `PhylopPCD`.",
            call = FALSE
        )
    }

    shiny::runApp(
        appDir,
        launch.browser = TRUE,
        display.mode = "normal"
    )
}
