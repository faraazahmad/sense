module ApplicationHelper
    def all_articles
        posts = Post.all
        articles = from_api()

        result = []
        result << posts
        result << articles

        return result.shuffle!
    end
end
