layout 'layout/main.tpl', true,
        bodyContents: contents {
            div(class: "row") {
                div(class: "col-md-8") {
                    model.put('post', content)
                    include template: 'post-brick.tpl'
                }
                 aside(class: "col-md-4") {
                    include template: 'aside.tpl'
                }
            }
        }
