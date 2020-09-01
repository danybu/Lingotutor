class Language < ApplicationRecord
  vaildates :code, presence:true, uniqueness:true
  validates :english_name, presence: true, uniqueness: true
  validates :native_name, presence: true, uniqueness: true
  default_scope -> { order(english_name: :asc) }
end
