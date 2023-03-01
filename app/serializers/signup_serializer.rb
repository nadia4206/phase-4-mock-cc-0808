class SignupSerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty

  def id
    self.object.activity.id
  end

  def name
    self.object.activity.name
  end

  def difficulty
    self.object.activity.difficulty
  end

end
