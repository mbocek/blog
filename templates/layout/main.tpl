yieldUnescaped '<!DOCTYPE html>'
html(lang:'en'){

    head {
        include template: "header.tpl"
    }

    body() {

        include template: 'menu.tpl'

        div(class:"container") {
            div(class:"jumbotron"){
                h1("${config.blog_title}")
                newLine()
                p("${config.blog_subtitle}")
                newLine()
            }

            bodyContents()
        }
        newLine()
        include template: 'footer.tpl'

        script(src:"${config.site_contextPath}js/vendor/jquery-3.4.1.min.js"){}newLine()
        script(src:"${config.site_contextPath}js/vendor/bootstrap.bundle.min.js"){}newLine()
        link(rel:"stylesheet", href:"${config.site_contextPath}css/vendor/highlightjs/dracula.css") newLine()
        script(src:"${config.site_contextPath}js/vendor/highlight.pack.js","") newLine()
        script(src:"${config.site_contextPath}js/vendor/highlightjs-badge.min.js","") newLine()
        script(src:"${config.site_contextPath}js/app.js"){}newLine()
    }
}
newLine()
