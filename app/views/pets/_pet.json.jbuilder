json.extract! pet, :id, :name, :type, :birthday, :breed, :description, :microchip_number, :adoption_date, :color, :owner_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
