layout 'layout/main.tpl', true,
        bodyContents: contents {
            div(class:"row"){
                div(class:"col"){
                    h2("${content.title}")

                    time(datetime:"${content.date.format('yyyy-MM-dd')}"){
                        p("${content.date.format('dd.MM.yyyy')}")
                    }
                }
            }
            if (content.summary) {
                div(class:"row"){
                    div(class:"col") {
                        p(class:"summary", "${content.summary}")
                    }
                }
            }
            hr()
            div(class:"row"){
                div(class:"col") {
                    yieldUnescaped content.body
                }
            }
        }
