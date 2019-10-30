FROM opensciencegrid/osgvo-el7
MAINTAINER Mats Rynge "rynge@isi.edu"

RUN cd /tmp && \
    wget -nv http://bitbucket.org/eigen/eigen/get/3.3.7.tar.bz2 && \
    tar xjf 3.3.7.tar.bz2 && \
    ls -l && \
    cd eigen* && \
    mkdir build_dir && \
    cd build_dir && \
    cmake $PWD/../ -DCMAKE_INSTALL_PREFIX=/usr && \
    make install

# build info
RUN echo "Timestamp:" `date --utc` | tee /image-build-info.txt


