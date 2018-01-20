module ApplicationHelper

  def default_meta_tags
    {
      title: "Index investing calculator",
      description: "A simple calculator for index investment",
      keywords: "Index fund, Index investment, Index investing, calculator, compound, compound calculator",
      # icon: image_url("favicon.ico"), # favicon
      noindex: ! Rails.env.production?, # production環境以外はnoindex
      charset: "UTF-8",
      # OGPの設定
      og: {
        title: "Index investing calculator",
        type: "website",
        url: request.original_url,
        # image: image_url("OGPで設定する画像"),
        site_name: "Index investing calculator",
        description: "A simple calculator for index investment",
        locale: "ja_JP"
      }
    }
  end

end
