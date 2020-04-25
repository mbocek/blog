div(class:"p-3"){
    span(class:"badge badge-primary"){
        span(style:"display:block;", "${post.date?.format("MMM")}")
        newLine()
        span(style:"display:block;", "${post.date?.format("dd")}")
        newLine()
        span(style:"display:block;", "${post.date?.format("yyyy")}")
    }
}
