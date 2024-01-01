class Foo < Jennifer::Model::Base
  with_timestamps

  mapping(
    id: Primary64,
    name: String,
    created_at: Time?,
    updated_at: Time?,
  )
end
