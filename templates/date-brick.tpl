div(class:"p-3"){
    span(class:"badge badge-primary"){
        div("${post.date?.format("MMM")}")
        newLine()
        div("${post.date?.format("dd")}")
        newLine()
        div("${post.date?.format("yyyy")}")
    }
}
