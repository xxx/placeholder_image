require 'RMagick'
require 'rvg/rvg'

module PlaceholderImage
  def placeholder_image_tag(*args)
    "<img src='#{placeholder_image_url(*args)}' />"
  end

  private

  def placeholder_image_url(*args)
    "data:image/png;base64,#{placeholder_image_data(*args)}"
  end

  def placeholder_image_data(*args)
    if args.first.is_a? String
      width, height = args.shift.downcase.split('x').map(&:to_i)
    end

    options = args.shift || {}

    width ||= options[:width].to_i
    height ||= options[:height].to_i
    color = options.key?(:color) ? options[:color].to_s : "grey69"
    text_color = options.key?(:text_color) ? options[:text_color].to_s : "black"

    rvg = Magick::RVG.new(width, height).viewbox(0, 0, width, height) do |canvas|
      canvas.background_fill = color
    end

    img = rvg.draw

    img.format = "png"

    drawable = Magick::Draw.new
    drawable.pointsize = width / 10
    drawable.fill = text_color
    drawable.gravity = Magick::CenterGravity
    drawable.annotate(img, 0, 0, 0, 0, "#{width} x #{height}")

    [img.to_blob].pack("m")
  end
end

ActionView::Base.send(:include, PlaceholderImage)
