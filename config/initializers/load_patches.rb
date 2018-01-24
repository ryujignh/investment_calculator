Dir.glob(Rails.root.join('vendor/patches/**/*.rb')) do |path|
  require path
end
