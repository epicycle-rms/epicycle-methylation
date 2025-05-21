wget https://ftp.ncbi.nlm.nih.gov/geo/series/GSE167nnn/GSE167059/matrix/GSE167059_series_matrix.txt.gz
wget "https://static-content.springer.com/esm/art%3A10.1038%2Fs41598-021-01649-w/MediaObjects/41598_2021_1649_MOESM1_ESM.xls"
zcat GSE167059_series_matrix.txt.gz | head -n 100 | grep sample_id | cut --complement -f 1 | tr ' ' '\n' > sample_ids.txt
zcat GSE167059_series_matrix.txt.gz | head -n 100 | grep Sample_title | cut --complement -f 1 | tr '\t' '\n' > sample_titles.txt

