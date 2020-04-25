footer {
    div(class:"container text-center") {
        yield("${new Date().format("yyyy")}")
        yieldUnescaped("&copy; ")
        yield("${config.site_owner}")
    }
}
