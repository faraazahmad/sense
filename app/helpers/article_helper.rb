require 'news-api'

module ArticleHelper
    def getFive(order)
        x = 5 * order
        @headlines[x..x+4]
    end
end
