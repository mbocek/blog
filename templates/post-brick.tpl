article() {
    div(class:"row"){
        div{
            include template: 'date-brick.tpl'
        }
        div{
            h1{
                a(href:"${config.site_contextPath}${post.uri}","${post.title}")
            }
            include template: 'tags-brick.tpl'
        }
        hr()
    }

    div(class:"row"){
        div(class:"col"){
            yieldUnescaped post.body
        }
    }
}
