var pres = document.querySelectorAll("pre>code"); 
for (var i = 0; i < pres.length; i++) { 
    hljs.highlightBlock(pres[i]); 
}
var options = { 
    contentSelector: "article", 
    copyIconClass: "fas fa-copy", 
    checkIconClass: "fas fa-check text-success",
    onBeforeCodeCopied: function(text, codeElement) {
        if (codeElement.classList.contains("language-console")) {
            text = text.split('\n')[0].substring(2);
        }
        return text;
    }
}; 
window.highlightJsBadge(options);
