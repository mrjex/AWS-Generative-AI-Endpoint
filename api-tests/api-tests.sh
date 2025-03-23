# API - Invoke URL: https://dxnl2k5lhk.execute-api.eu-north-1.amazonaws.com/dev
# API POST endpoint: https://dxnl2k5lhk.execute-api.eu-north-1.amazonaws.com/dev/blog-generation


API_URL="https://dxnl2k5lhk.execute-api.eu-north-1.amazonaws.com/dev"           # The URL to invoke of the API
API_ENDPOINT="/blog-generation"                                                 # The POST endpoint for creating blogs
API_BLOG_POST_URL="${API_URL}${API_ENDPOINT}"


DYNAMIC_POST_TESTS=("Cars" "Fruits" "Programming" "Japan" "Mexico")


runShellTests() {
  runPostRequestsARRAY
  runPostRequestsJSON
}


runPostRequestsARRAY() {
  for i in "${DYNAMIC_POST_TESTS[@]}"
  do
    CURRENT_REQ_BODY="${i}"
    postRequestARRAY "${CURRENT_REQ_BODY}"
  done
}

runPostRequestsJSON() {
  for i in {1..8}
  do
    JSON_FILE="shell-tests/test${i}.json"
    postRequestJSON "${JSON_FILE}"
  done
}


postRequestARRAY() {
  curl -X POST -H "Content-Type: application/json" -d '{"blog_topic":"'${CURRENT_REQ_BODY}'"}' "https://dxnl2k5lhk.execute-api.eu-north-1.amazonaws.com/dev/blog-generation"
}

postRequestJSON() {
  curl -X POST -H "Content-Type: application/json" -d "@${JSON_FILE}" "https://dxnl2k5lhk.execute-api.eu-north-1.amazonaws.com/dev/blog-generation"
}