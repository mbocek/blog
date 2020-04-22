footer {
    div(class:"container text-center"){
        yield "${new Date().format("yyyy")}"
        yieldUnescape "&copy; "
        yield "${config.site_owner}"
    }
}
