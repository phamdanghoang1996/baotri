class New < ApplicationRecord
  def addvalue(title, introduce, content, image, create_day, update_day)
    news = New.new
    news.title = title
    news.introdute = introduce
    news.content = content
    news.image = image
    news.create_day = create_day
    news.update_day = update_day
    news.save
  end
  def updateCount(id_count)
    news = New.find_by(id: id_count)
    news.counts = news.counts+1
    news.save
  end
end
