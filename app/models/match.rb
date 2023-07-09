class Match < ApplicationRecord
    has_one_attached :enemy_image

    def get_enemy_image
        unless enemy_image.attached?
            file_path = Rails.root.join('app/assets/images/image-no.jpg')
            enemy_image.attach(io:File.open(file_path), filename: 'default-image1.jpg', content_type: 'image/jpeg')
        end
        enemy_image
    end
end
