function Details(id) {
    window.location.href = `Details.aspx?ID=${id}`;
    document.getElementById("Page_Load").click();
}

function LoadCartViewWithNewItem(id) {
    window.location.href = `ShoppingCart.aspx?ID=${id}`;
}

