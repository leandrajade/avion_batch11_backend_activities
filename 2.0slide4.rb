class Camera
    def initialize(brand, sensor, version)
      @brand = brand
      @sensor = sensor
      @version = version
    end

    def click
        puts "#{@brand} is taking a shot"
    end
end

fiveD = Camera.new("Canon", "Full-frame", "2")
fiveD.click

