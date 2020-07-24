layout 'layout/main.tpl', true,
        bodyContents: contents {

            div(class: "row") {
                div(class: "col-md-8") {
                    published_posts[0..3].each { post ->
                        model.put('post', post)
                        include template: 'post-brick-short.tpl'
                        if (post != published_posts.last()) {
                            hr()
                        }
                    }
                }
                aside(class: "col-md-4") {
                    include template: 'aside.tpl'
                }
            }

            hr()
            div(class:"container text-right separator"){
                yield "Staršie články sú dostupné v "
                a(href:"${config.site_contextPath}${config.archive_file}","archíve")
            }
        }
