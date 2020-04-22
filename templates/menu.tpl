nav(class:"navbar navbar-expand-lg navbar-dark bg-dark fixed-top") {
    div(class:"container"){
        a(class:"navbar-brand", href:"#", "${config.blog_title}")
        button(class:"navbar-toggler", type:"button", "data-toggle":"collapse", "data-target":"#navbarSupportedContent", "aria-controls":"navbarSupportedContent", "aria-expanded":"false", "aria-label":"Toggle navigation") {
            span(class:"navbar-toggler-icon"){}
        }
        div(class:"collapse navbar-collapse", id="navbarNav") {
            ul(class:"navbar-nav") {
                li(class:"nav-item active") {
                    a(class:"nav-link", href:"#", "HOME") {
                        span(class:"sr-only", "(current)")
                    }
                }
                li(class:"nav-item"){
                    a(class:"nav-link", href:"${config.site_contextPath}index.html","Home")
                }
                li(class:"nav-item"){
                    a(class:"nav-link", href:"${config.site_contextPath}${config.archive_file}","Archive")
                }
                li(class:"nav-item"){
                    a(class:"nav-link", href:"${config.site_contextPath}about.html","About")
                }
                li(class:"nav-item"){
                    a(class:"nav-link", href:"${config.site_contextPath}${config.feed_file}","Subscribe")
                }
            }
        }
    }
}

div(class:"container"){
    div(class:"jumbotron"){
        h1("${config.blog_title}")
        newLine()
        p("${config.blog_subtitle}")
        newLine()
    }
}
