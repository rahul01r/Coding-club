for item in `ls`
do
extensionName=`echo $item | awk -F. '{ print $2 }'`
echo $extensionName
case $extensionName in
sh)
echo "$item is a Shell-Script File"
;;
py)
echo "$item is a Python File"
;;
js)
echo "$item is a Javascript File"
;;
html)
echo "$item is a HTML File"
;;
*)
echo "Something went wrong with files :("
;;
esac
done