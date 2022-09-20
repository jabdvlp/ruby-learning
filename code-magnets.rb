class Blender
    def close_lid
        puts "Sealed tight!"
    end
    def blend(speed)
        puts "Spinning on #{speed} setting."
    end
end

blender = Blender.new
blender.blend("high")

blender.close_lid
