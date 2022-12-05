# data_clean rcript are used to clean raw data
# make_table rscript is used to make table one
# make_mosaic rscript is used to make mosaic plot
# render_report rscript is used to generate report based on markdownfile.
# To restore all the packages in the report simply type make install in your r terminal and it will synchronize all the packages in the lock file.

# Docker
*My Docker image is in https://hub.docker.com/repository/docker/larrylin9497/final*
*To build the container use make pull*
*To run the container, use command docker run -it larrylin9497/final*
*To build the compiled final report locally run make final_report/report.html to run the docker container*