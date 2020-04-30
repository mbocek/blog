footer(class:"p-2 rounded") {
    div(class:"text-center") {
        yield("${new Date().format("yyyy")}")
        yieldUnescaped("&copy; ")
        yield("${config.site_owner}")
    }
}
