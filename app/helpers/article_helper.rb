require 'news-api'

module ArticleHelper
    def get_five(order)
        x = 5 * order
        @headlines[x..x+4]
    end
end
