layout 'layout/main.tpl', true,
        bodyContents: contents {
            published_posts[0..0].each { post ->
                model.put('post', post)
                include template: 'post-brick.tpl'
            }

            div(class:"container text-right"){
                hr()
                yield "Older post are available in the "
                a(href:"${config.site_contextPath}${config.archive_file}","archive")
            }
        }
