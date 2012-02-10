# encoding: UTF-8

module StoriesHelper
  def comments_on_russian_by_count count
    "комментар#{
    case count % 10
      when 1 then "ий"
      when 2..4 then "ия"
      else "иев"
    end }"
  end
end
