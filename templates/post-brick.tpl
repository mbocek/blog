article() {
    include template: 'post-header-brick.tpl'
    hr()

    div(class:"row"){
        div(class:"col"){
            yieldUnescaped post.body
        }
    }
}
