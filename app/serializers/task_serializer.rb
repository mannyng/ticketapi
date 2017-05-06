class TaskSerializer < ActiveModel::Serializer
    type :task

    attributes :id, :name, :card_id, :done, :created_at, :updated_at

    belongs_to :card
end
