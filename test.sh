number_of_tags=$(git tag | wc -l)
echo $number_of_tags
if [ $number_of_tags -lt 2 ]; then
 echo "::set-output name=is_consumer::true"
 echo "HELO"
 exit 0
fi