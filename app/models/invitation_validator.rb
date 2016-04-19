class InvitationValidator < ActiveModel::Validator
  def validate(user)
    if user.invite != Figaro.env.invitation_code
      user.errors[:base] << "The Invitation Code is Incorrect"
    end
  end
end