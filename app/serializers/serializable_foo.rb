class SerializableFoo < SerializableBase

  type :foo

  attribute :id
  attribute :bar1
  attribute :bar2

  link :self do
    @url_helpers.api_foo_url(@object.id, host: @url_host)
  end

end