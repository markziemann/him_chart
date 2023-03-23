FROM bioconductor/bioconductor_docker:RELEASE_3_14

# Update apt-get
RUN apt-get update \
        && apt-get install -y nano git  libncurses-dev \
        ## Install the python package magic wormhole to send files
        && pip install magic-wormhole           \
        ## Remove packages in '/var/cache/' and 'var/lib'
        ## to remove side-effects of apt-get update
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*


# Install required CRAN packages
RUN R -e 'install.packages(c("WGCNA","RColorBrewer","matrixStats","gplots","reshape2","ggplot2","kableExtra","vioplot","eulerr"))'

# Install required Bioconductor package
RUN R -e 'BiocManager::install(c("missMethyl","limma","minfi","IlluminaHumanMethylation450kanno.ilmn12.hg19","IlluminaHumanMethylationEPICanno.ilm10b2.hg19", "ruv", "FlowSorted.Blood.450k", "DMRcate", "FlowSorted.Blood.EPIC", "mitch"))'

# Set the container working directory
ENV DIRPATH /analysis
WORKDIR $DIRPATH
