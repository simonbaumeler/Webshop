function GoHome() {
    window.location.href = `Home.aspx`;
}

function Details(id) {
    window.location.href = `Details.aspx?ID=${id}`;
    document.getElementById("Page_Load").click();
}

