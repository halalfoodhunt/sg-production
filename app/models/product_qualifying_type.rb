class ProductQualifyingType < ActiveRecord::Base
    has_attached_file :image, styles: { large: "300x300>", medium: "120x120>", square: "30x30>", thumb: "16x16>" }, default_url: "/images/:style/logo-placeholder.png"
    validates_attachment :image, :content_type => { :content_type => "image/png" }, :size => { :in => 0..100.kilobytes }
end
