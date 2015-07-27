json.array!(@rk_scaffolds) do |rk_scaffold|
  json.extract! rk_scaffold, :id
  json.url rk_scaffold_url(rk_scaffold, format: :json)
end
