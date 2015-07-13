json.array!(@test_results) do |test_result|
  json.extract! test_result, :id, :system_under_test, :passed, :run_by_whom, :test_details
  json.url test_result_url(test_result, format: :json)
end
