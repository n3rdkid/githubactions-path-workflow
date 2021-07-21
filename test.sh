old_tag=$(git describe --abbrev=0 --tags $(git rev-list --tags --skip=1  --max-count=1))
new_tag=$(git describe --abbrev=0 --tags $(git rev-list --tags --max-count=1))
admin_diff_list=$(git diff $old_tag $new_tag --name-only | grep packages/consumer)
if [[ ${#admin_diff_list} -ne 0 ]]; then
  echo "::set-output name=is_admin::true"
  echo "TRUE"
else 
  echo "False"
fi