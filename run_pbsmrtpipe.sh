#!/bin/bash

source smrtlink-6.0

dataset create --type SubreadSet --force --name dataname --generateIndices sequeldata.subreadset.xml input.fofn
dataset create --type BarcodeSet --force -name bcardes --generateIndices singleBarcoding.barcodeset.xml barcodes8bp.fasta

pbsmrtpipe pipeline-id -o CCS -e eid-subread:sequeldata.subreadset.xml -e eid_barcode:singleBarcoding.barcodeset.xml --preset-xml preset.xml --preset-xml sa3_ds_ccs_barcode_taskoptions.xml --debug pbsmrtpipe.pipelines.sa3_ds_ccs_barcode
