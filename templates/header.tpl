yieldUnescaped('<script async src="https://www.googletagmanager.com/gtag/js?id=UA-164558222-1"></script>')
yieldUnescaped('<script>')
yieldUnescaped('window.dataLayer = window.dataLayer || [];')
yieldUnescaped('function gtag(){dataLayer.push(arguments);}')
yieldUnescaped('gtag("js", new Date());')
yieldUnescaped('gtag("config", "UA-164558222-1");')
yieldUnescaped('</script>')
newLine()

meta(charset:"utf-8") newLine()
meta(name:"viewport", content:"width=device-width, initial-scale=1, shrink-to-fit=no") newLine()
title("${config.blog_title}") newLine()
link(rel:"stylesheet", href:"${config.site_contextPath}css/vendor/bootstrap.min.css") newLine()
link(rel:"stylesheet", href:"${config.site_contextPath}css/vendor/fontawesome/all.min.css") newLine()
link(rel:"stylesheet", href:"${config.site_contextPath}css/app.css") newLine()
