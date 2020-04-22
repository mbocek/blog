layout 'layout/main.tpl', true,
        bodyContents: contents {
            div(class:"row") {
                div(class:"col") {
                    h1("Taglist")
                    alltags.sort().each { tag ->
                        tag = tag.trim()
                        def postsCount = posts.findAll { post ->
                            post.status == "published" &&
                                    post.tags?.contains(tag)
                        }.size()

                        span{
                            a(href:"${config.site_contextPath}tags/${tag.replace(' ', '-')}.html", class:"badge badge-primary"){
                                yield "$tag "
                                span(class:"badge badge-light", "${postsCount}")
                            }
                        }
                        newLine()
                    }
                }
            }
            hr()
            div(class:"row") {
                div(class:"col") {
                    h2("${tag}")
                    hr()
                    def last_month = null;
                    tag_posts.each { post ->
                        if ( post.status == 'published' ) {
                            if (last_month) {
                                if (post.date.format("MMMM yyyy") != last_month) {
                                    yieldUnescaped "</ul>"
                                    h4("${post.date.format("MMMM yyyy")}")
                                    yieldUnescaped "<ul>"
                                }
                            }
                            else {
                                h4("${post.date.format("MMMM yyyy")}")
                                yieldUnescaped "<ul>"
                            }
                            li{
                                yield "${post.date.format("dd")} - "
                                a(href:"${config.site_contextPath}${post.uri}"){
                                    yield post.title
                                }
                            }
                            last_month = post.date.format("MMMM yyyy")
                        }
                    }
                    yieldUnescaped "</ul>"
                }
            }
        }
