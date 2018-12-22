module ApplicationHelper
    def all_articles
        # TODO: get only posts which are at most 6 hours old
        posts = Post.all
        articles = from_api()

        result = []
        result << posts
        articles.each do |a|
            result << a
        end

        return result.shuffle
    end
end
