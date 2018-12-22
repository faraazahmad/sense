module PostHelper
    # Return all user created posts which are
    # less than 6 hours old
    def current_posts
        current_hour = Time.now.hour
        posts = []

        Post.all.each do |p|
            if p.created_at.hour - current_hour <= 6
                posts << p
            end
        end

        return posts
    end
end
