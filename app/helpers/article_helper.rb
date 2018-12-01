require 'news-api'

module ArticleHelper
    def get_four(order)
        x = 4 * order
        @headlines[x..x+3]
    end
end
