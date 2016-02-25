# FS=","
{
	for(i=1;i<=NF;i++){
  		#gsub(/^ *| *$/,"",$i)
  		print "Field " i " is " $i
	}
}