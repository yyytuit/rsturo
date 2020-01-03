module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
# def yeller(a)
#   b = a.map {|i| i.upcase}
#   puts b.join
# end
# def random_subdomain
#   moji = ('a'..'z').to_a
#   num = (0..9).to_a
#   (moji + num).shuffle[0..7].join
# end
# def string_shuffle(s)
#   s.split('').shuffle.join
# end

# def shuffle(s)
#   if s.is_a?(Array)
#     s.join.split('').shuffle.join
#   else
#     s.split('').shuffle.join
#   end
# end

# class String
#   def palindrome?
#     self == reverse
#   end
#   def shuffle
#     split('').shuffle.join
#   end
# end
