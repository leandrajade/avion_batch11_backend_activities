class Picture
    def initialize(camera = nil, subject = false, image = false)
        @camera = camera
        @subject = subject
        @image = image
    end

    def take_picture
        pose_subject #invoking a private method
        click
        @image = true
    end

    def click
        use_camera #invoking a private method
        puts "clicked the shutter button"
    end

    private
  
    def use_camera
        @camera = true
        puts "switching camera on"
    end

    def pose_subject
        @subject = true
        puts "posing subject"
    end
end

## execute

photoOp = Picture.new
photoOp.take_picture

