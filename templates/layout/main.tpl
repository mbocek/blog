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

        yieldUnescaped('<script> ' +
        '    var pres = document.querySelectorAll("pre>code"); ' +
        '    for (var i = 0; i < pres.length; i++) { ' +
        '       hljs.highlightBlock(pres[i]); ' +
        '    } ' +
        '    var options = { ' +
        '       contentSelector: "#ArticleBody", ' +
        '       copyIconClass: "fas fa-copy", ' +
        '       checkIconClass: "fas fa-check text-success" ' +
        '    }; ' +
        '    window.highlightJsBadge(options); ' +
        '</script> ') newLine()
        script(src:"${config.site_contextPath}js/vendor/jquery-3.4.1.min.js"){}newLine()
        script(src:"${config.site_contextPath}js/vendor/bootstrap.bundle.min.js"){}newLine()
    }
}
newLine()
