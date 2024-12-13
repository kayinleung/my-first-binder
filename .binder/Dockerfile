FROM rocker/binder:4.4.1
LABEL maintainer='your_name'
COPY --chown=${NB_USER} . ${HOME}
USER ${NB_USER}



RUN wget https://github.com/kayinleung/my-first-binder/raw/main/DESCRIPTION \
 && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2024-12-13/')); devtools::install_deps()" \
 && R -e "install.packages('ggplot2')" \
 && wget -q -O gapminder.csv http://bit.ly/2uh4s3g

RUN rm DESCRIPTION.1; exit 0
