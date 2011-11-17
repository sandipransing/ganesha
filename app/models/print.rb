class Print < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :image,
    :styles => {:medium => ["480x480#", :jpg], 
                :thumb => ["100x100#", :jpg], 
                :slider => ["362x362#", :jpg]},
    :storage => 's3',
    :default_url => "/images/storefront_default.jpg",
    :s3_credentials => YAML.load_file("#{Rails.root}/config/s3.yml"), 
    :path => ":attachment/#{Rails.env}/:id/:style/:basename.:extension",
  :bucket => 'ganesha'
  #validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 3.megabytes, :message => 'file size maximum 3 MB allowed'
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/bmp', 'image/pjpeg', 'image/x-png']
end
