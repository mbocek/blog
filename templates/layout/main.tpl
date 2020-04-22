yieldUnescaped '<!DOCTYPE html>'
html(lang:'en'){

    head {
        include template: "header.tpl"
    }

    body() {

        include template: 'menu.tpl'

        div(class:"container") {
            bodyContents()
        }
        newLine()
        include template: 'footer.tpl'

        script(src:"${config.site_contextPath}js/vendor/jquery-3.4.1.min.js"){}newLine()
        script(src:"${config.site_contextPath}js/vendor/bootstrap.bundle.min.js"){}newLine()
    }
}
newLine()
