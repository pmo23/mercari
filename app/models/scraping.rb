class Scraping
  def self.get_category1
    agent = Mechanize.new
    page = agent.get("https://www.mercari.com/jp/category/")
    element = page.search(".category-list-box h3")
    element.each do |ele|
      # 検証用
      # puts ele.inner_text

      # 保存用
      product = Category1.new(name: ele.inner_text)
      product.save
    end
  end

  def self.get_category2
    agent = Mechanize.new
    page = agent.get("https://www.mercari.com/jp/category/")
    element = page.search(".category-list-individual-box-inner-box h4")
    element.each do |ele|
      # 検証用
      # puts ele.inner_text

      # 保存用
      product = Category2.new(name: ele.inner_text)
      product.save
    end
  end

  def self.get_category3
    agent = Mechanize.new
    page = agent.get("https://www.mercari.com/jp/category/")
    element = page.search(".category-list-individual-box-sub-sub-category-name a")
    id = 0
    element.each do |ele|
      # 検証用
      # e = ele.inner_text.strip!
      # if e == "すべて"
      #   id += 1
      # else
      #   puts e
      #   puts id
      # end
      # 保存用
      e = ele.inner_text.strip!
      if e == "すべて"
        id += 1
      else
        product = Category3.new(name: e, category2s_id: id)
        product.save
      end
    end
  end
end
