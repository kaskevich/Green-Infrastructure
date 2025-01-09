# Assessment of Local Green Infrastructure in the Coastal Zone
Geospatial Toolkit for Coastal Green Infrastructure Monitoring and Sustainable Management 

## Overview

This project focuses on developing a **Geospatial Toolkit** to monitor, analyze, and sustainably manage **Coastal Green Infrastructure (GI)**. The toolkit integrates theoretical insights, spatial datasets, and advanced geospatial analyses to assess the conditions, connectivity, fragmentation, and cumulative impacts on coastal ecosystems. It includes a **tutorial-style theoretical foundation** alongside practical **R code** for geospatial and statistical analyses.

Identified core, corridor, and branch elements using MSPA in coastal areas.
Evaluated forest loss, land abandonment, impervious surfaces, and road impacts.
Quantified cumulative impacts on coastal GI using multiple indicators.
Highlighted high-pressure regions in urban areas through hot-spot analysis.
Compared environmental pressures across counties, detailing local challenges.


## Key Components

### 1. Theoretical Part
The theoretical section provides a comprehensive overview of:
- **Green Infrastructure (GI)**: Definition, importance, and role in landscape ecology.
- **Estonian Coastal Zone**: Delimitation, ecological significance, and current challenges.
- **GI Concepts**: Connectivity, fragmentation, and ecosystem services.
- **Methodology**: The scientific basis for data collection and analysis.

This part serves as a **tutorial and framework** for understanding the principles behind GI analysis.

---

### 2. Geospatial Data

The repository contains various datasets used in the analysis:

#### Core Datasets
- **Landscape Statistics**: Includes metrics for patch size, shape, and composition.
  - File: `landscape_statistics.csv`
- **Patch Metrics**: Contains values for patch-level ecosystem indicators.
  - File: `patch_metrics_value.xlsx`
- **Regional Datasets**: Specific to Estonian coastal regions:
  - `Harju_branches.csv`
  - `Saare_cores.csv`
  - Additional regional shapefiles are available in the `BGI_MSPA_statistics` folder.

#### Processed Spatial Data
- **Hexagonal Spatial Layers**:
  - Hexagon-based layers for **impact analysis** and **cumulative impact distribution**.
- **Connectivity Layers**:
  - Data of MSPA supporting analyses of landscape connectivity and corridors.

#### Analysis Outputs
- Visualizations of GI connectivity and fragmentation.
- Maps of **cumulative environmental impact** and **hotspot clustering**.

---

### 3. R Code for Analysis

The R scripts included in this repository are designed to **complement the theoretical tutorial** and provide a replicable workflow for advanced geospatial analyses:

- **Cumulative Environmental Impact Distribution**:
  - Code: `Cumulative Environmental Impact Distribution.R`
  - Analyzes cumulative pressures and visualizes hotspot clustering.
- **Kruskal-Wallis and Dunn Tests**:
  - Code: `Kruskal-Wallis and Dunn Test Statistics.R`
  - Performs statistical assessments of the environmental impacts across regions.
- **Patch Metrics Analysis**:
  - Code: `LS_Patch_metrics_results.R`
  - Calculates landscape structure and connectivity metrics.

---

### 4. Workflow

The workflow integrates **geospatial analysis** and **statistical modeling** to address the following:
- **GI Condition Assessment**:
  - Evaluate landscape metrics for core areas and corridors.
- **Connectivity Analysis**:
  - Map and quantify connectivity among GI patches.
- **Fragmentation Analysis**:
  - Measure human-induced landscape fragmentation.
- **Impact Analysis**:
  - Identify hotspots of cumulative environmental pressures.

The combined results provide critical insights into ecosystem health and inform sustainable management practices.

---

### 5. Tutorial Part

The repository serves as a tutorial for replicating GI assessments using:
- Spatial datasets (e.g., **LandMark, GADM**).
- Analytical tools like **R**, **QGIS**, and **ArcGIS**.
- Advanced statistical methods for validating and visualizing findings.

---

## How to Use the Toolkit

1. Clone the repository to your local machine:
   ```bash
   git clone <repository_url>
2. Navigate to the relevant sections of the code and datasets.
3. Follow the steps outlined in the R scripts to perform analyses.
4. Use the tutorial part to understand the theoretical context behind the analyses.
   
## Acknowledgments

This project leverages open-source data and tools, with special acknowledgment to the Estonian University of Life Sciences.

Feel free to submit issues or questions to improve the functionality of this toolkit. Contributions are welcome!





