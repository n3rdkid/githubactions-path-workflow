if grep -q "refs/tags/v" <<< "refs/tags/v0.0.3"; then
  echo "::set-output name=env::PROD"
else
  echo "::set-output name=env::DEV"
fi