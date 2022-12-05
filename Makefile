550_project_report_Xiuran_Lin.html: 550_project_report_Xiuran_Lin.Rmd code/03_render_report.R output/data_clean.rds output/table_one.rds output/mosaicplot.png 
	Rscript code/03_render_report.R 

output/data_clean.rds:
	Rscript code/clean_data.R
	
output/mosaicplot.png:
	Rscript code/02_make_mosaic.R

output/table_one.rds: code/01_make_table.R
	Rscript code/01_make_table.R

install:
	Rscript -e "renv::restore(prompt = FALSE)"
	
.PHONY: clean
clean:
	rm -f output/*.rds && rm -f output/*.png && rm -f *.html

build:
	docker build -t larrylin9497/final .
	
pull:
	docker pull larrylin9497/final

	
report/550_project_report_Xiuran_Lin.html:
	docker run -v "/$$(pwd)"/report:/project/report larrylin9497/final
	

