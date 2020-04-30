div(class:"row"){
    div(class:"col"){
        h1{
            a(href:"${config.site_contextPath}${post.uri}","${post.title}")
        }
    }
}
div(class:"row"){
    div(class:"col-auto datebrick"){
        include template: 'date-brick.tpl'
    }
    div(class:"col"){
        include template: 'tags-brick.tpl'
    }
}
div(class:"row"){
    div(class:"col") {
        p(class:"summary", "${post.summary}")
    }
}
