json.array!(@utterances) do |utterance|
  json.extract! utterance, :id, :user_id, :project_id
  json.url utterance_url(utterance, format: :json)
end
