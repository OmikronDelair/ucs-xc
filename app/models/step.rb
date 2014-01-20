class Step < ActiveRecord::Base
  belongs_to :user
  belongs_to :song

  mount_uploader :attachment, AttachmentUploader
end
