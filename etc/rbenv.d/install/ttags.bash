if declare -Ff after_install >/dev/null; then
  after_install generate_ttags
fi

generate_ttags() {
  if [ "$STATUS" -eq 0 ]; then
    rbenv-ttags "$VERSION_NAME"
  fi
}
