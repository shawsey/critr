class Post < ActiveRecord::Base
  belongs_to :user
  mount_uploader :attachment, AvatarUploader
  include PublicActivity::Model
  tracked only: [:create], owner: Proc.new{ |controller, model|
  controller.current_user }
  
end
