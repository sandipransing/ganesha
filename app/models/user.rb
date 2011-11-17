class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me
  belongs_to :image, :class_name => 'Print', :foreign_key => :photo_id
  has_many :prints

  def to_param
    slug = [id, first_name, last_name].reject(&:blank?)
    slug.insert(1, '-') if slug.size > 1
    slug.join
  end
  
  def photo
    print = image || prints.first || Print.new
    print.image
  end
  
  def photo_url
    photo.url(:medium)
  end

  def name
    [first_name, middle_name, last_name].compact.join('\s')
  end
end
