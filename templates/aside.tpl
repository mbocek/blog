div() {
    h4("Archív")
    div(class:"pl-3") {
        def last_month=null
        published_posts.each {post ->
            if (last_month) {
                if (post.date.format("MMMM yyyy") != last_month) {
                    yieldUnescaped "</ul>"
                    h5("${post.date.format("MMMM yyyy")}")
                    yieldUnescaped "<ul>"
                }
            } else {
                h5("${post.date.format("MMMM yyyy")}")
                yieldUnescaped "<ul>"
            }

            li{
                yield "${post.date.format("dd")} - "
                a(href:"${config.site_contextPath}${post.uri}","${post.title}")
            }
            last_month = post.date.format("MMMM yyyy")
        }
        yieldUnescaped "</ul>"
    }
}
