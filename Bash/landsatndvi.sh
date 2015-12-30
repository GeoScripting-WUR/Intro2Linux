#!/bin/bash
echo "teamname"
echo "14 january 2015"
echo "calculate landsat ndvi"
cd ../data
fn=$(ls *.tif)
echo "The input file: $fn"
outfn="ndvi.tif"
echo "The output file: $outfn"
echo "calculate ndvi"
gdal_calc.py -A $fn --A_band=4 -B $fn --B_band=3  --outfile=$outfn  --calc="(A.astype(float)-B)/(A.astype(float)+B)" --type='Float32' --co="COMPRESS=LZW"
echo "look at some histogram statistics"
gdalinfo -hist -stats $outfn

