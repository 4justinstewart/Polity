class User < ActiveRecord::Base

  # include Paperclip::Glue
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :user_address
  has_many :legislation_voices

  validates :email, presence: true, uniqueness: true

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def name
    "#{self.first_name.downcase.capitalize} #{self.last_name.downcase.capitalize}"
  end

end
