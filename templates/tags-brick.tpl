def contextPath = "${config.site_contextPath}"
post.tags.each { tag ->
    tag = tag.trim()
    a(class:"badge badge-primary", href:"${contextPath}tags/${tag.replace(' ','-')}.html", "${tag}")
    newLine()
}
