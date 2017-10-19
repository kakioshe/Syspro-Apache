#!bin/bash

head -n 14105 < apache.txt | tail -n +335 > tmp3.txt

grep GET tmp3.txt | awk 'BEGIN{
fname="";
jumlahDL=0;
}
{
	sub(/^[^"]*"GET /,"");
	download[$1]++
}
END {
	for(DL in download){
			jumlahDL=download[DL];
			fname=DL;
			printf("%s ", fname)
			printf("%s\n", jumlahDL) };
	}' | sort -r -n -k 2 > sering.txt
