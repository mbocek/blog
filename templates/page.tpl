layout 'layout/main.tpl', true,
        bodyContents: contents {
            div(class:"row"){
                div(class:"col"){
                    h2("${content.title}")

                    time(datetime:"${content.date.format('yyyy-MM-dd')}"){
                        small("${content.date.format('dd.MM.yyyy')}")
                    }
                    hr()

                    yieldUnescaped content.body
                }
            }
        }
