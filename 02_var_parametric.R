# results parametric paths----
paths.light.results.windows.parametric <- c(getCsvPath(paste0(paths.light.results.windows[1],"/", names.results.parametric)))
for (i in c(2:length(paths.light.results.windows))){
  paths.light.results.windows.parametric <- c(paths.light.results.windows.parametric,
                                            getCsvPath(paste0(paths.light.results.windows[i],"/", names.results.parametric)))
}

paths.pressure.results.windows.parametric <- c(getCsvPath(paste0(paths.pressure.results.windows[1],"/", names.results.parametric)))
for (i in c(2:length(paths.pressure.results.windows))){
  paths.pressure.results.windows.parametric <- c(paths.pressure.results.windows.parametric,
                                                 getCsvPath(paste0(paths.pressure.results.windows[i],"/", names.results.parametric)))
}

paths.temperature.results.windows.parametric <- c(getCsvPath(paste0(paths.temperature.results.windows[1],"/", names.results.parametric)))
for (i in c(2:length(paths.temperature.results.windows))){
  paths.temperature.results.windows.parametric <- c(paths.temperature.results.windows.parametric,
                                                    getCsvPath(paste0(paths.temperature.results.windows[i],"/", names.results.parametric)))
}