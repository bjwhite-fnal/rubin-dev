# Brandon White
# Rubin Data Management Dev Environment

# For now just use the LSST Science Pipelines image,
# because it probably gets us close to the standard software
FROM lsstsqre/centos:d_latest

USER root
RUN yum -y update && \
    yum -y upgrade && \
    yum install -y \
        which

USER lsst