module ApplicationHelper

  def default_meta_tags
    {
      title: "Investment calculator",
      description: "A simple investment calculator",
      keywords: "Investment, Index investment, calculator, compound, compound calculator",
      # icon: image_url("favicon.ico"), # favicon
      noindex: ! Rails.env.production?, # production環境以外はnoindex
      charset: "UTF-8",
      # OGPの設定
      og: {
        title: "Investment calculator",
        type: "website",
        url: request.original_url,
        # image: image_url("OGPで設定する画像"),
        site_name: "Investment calculator",
        description: "A simple investment calculator",
        locale: "ja_JP"
      }
    }
  end

end
