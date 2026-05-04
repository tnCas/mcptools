# mcptools

An R-based Model Context Protocol (MCP) server for automated data cleaning and analysis.

## Features
* **Median Imputation**: Automatically fills missing values in numeric columns.
* **Outlier Detection**: Uses the $1.5 \times IQR$ rule to identify anomalies.
* **Correlation**: Calculates Pearson correlation coefficients.

## Installation
```R
remotes::install_github("your-username/mcptools")
