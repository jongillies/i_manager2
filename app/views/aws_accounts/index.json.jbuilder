json.array!(@aws_accounts) do |aws_account|
  json.extract! aws_account, :id, :description
  json.url aws_account_url(aws_account, format: :json)
end
