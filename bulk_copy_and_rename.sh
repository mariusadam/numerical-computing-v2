# command that copies labs from one directory into another and adddsa prefix to each copied file
for i in `ls lab4/*`; do cp $i `echo $i | sed "s/lab4\//labs\/l4_/g"`; done
