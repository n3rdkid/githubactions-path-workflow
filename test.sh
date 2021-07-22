old_tag=$(git describe --abbrev=0 --tags $(git rev-list --tags --skip=1  --max-count=1))
echo $old_tag
new_tag=$(git describe --abbrev=0 --tags $(git rev-list --tags --max-count=1))
echo $new_tag
temp=$(git diff $old_tag $new_tag --name-only)
echo $temp
consumer_diff_list=$temp | grep "packages/consumer"