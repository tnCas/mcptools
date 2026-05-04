# mcptools

An R-based Model Context Protocol (MCP) server for automated data cleaning and analysis.

## Features
* **Median Imputation**: Automatically fills missing values in numeric columns.
* **Outlier Detection**: Uses the $1.5 \times IQR$ rule to identify anomalies.
* **Correlation**: Calculates Pearson correlation coefficients.

## Installation
```R
remotes::install_github("your-username/mcptools").

## Configuration for AI Clients 
This server communicates via the standard stdio (standard input/output) interface. Any AI agent or IDE that supports the Model Context Protocol (MCP) can connect to these tools.

1. Standardized Connection Parameters
To manually connect an agent to this server, use these settings:

Command: Rscript

Arguments: -e "library(mcptools); source(system.file('scripts/server.R', package='mcptools'))"

2. Implementation Examples
Claude Desktop
Add this entry to your configuration file (usually found at %APPDATA%\Claude\claude_desktop_config.json on Windows or ~/Library/Application Support/Claude/claude_desktop_config.json on macOS):
{
  "mcpServers": {
    "mcptools": {
      "command": "Rscript",
      "args": [
        "-e",
        "library(mcptools); source(system.file('scripts/server.R', package='mcptools'))"
      ]
    }
  }
}

3. Environment Requirements
For the configuration to work, ensure the following:

System Path: Rscript must be available in your system's environment variables (PATH).

Package Installation: The package must be installed in your local R library. If you have not done so, run:
remotes::install_github("your-username/mcptools").

4. Technical Verification
To confirm the server is ready for an AI agent, execute the following in your terminal:
Rscript -e "library(mcptools); source(system.file('scripts/server.R', package='mcptools'))"

The terminal should stay active without errors, indicating it is waiting for a JSON-RPC connection from an AI client.

Statistical Logic Summary: The tools provided by this configuration perform analysis based on standard statistical thresholds.
