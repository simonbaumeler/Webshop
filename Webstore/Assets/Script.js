function Details(productname) {
    window.location.href = `Details.aspx?name=${productname}`;
    document.getElementById("Page_Load").click();
}