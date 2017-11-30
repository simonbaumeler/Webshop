<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Webstore.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BuyAHuman</title>
    <link rel="stylesheet" href="Assets/StyleSheetHome.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LblTitle" runat="server" Text="Buy A Humain"></asp:Label>
                <div>
                    <asp:ListView ID="LstVwProducts" runat="server">
                        <ItemTemplate>
                            <div class="DivProduct">
                                <asp:Image class="Img" runat="server" ImageUrl='<%#Eval("ImagePath")%>'/>
                                <asp:Label class="Lbl" runat="server" Text='<%#Eval("Name")%>'/>
                                <asp:Label CssClass="LblDescription Lbl" runat="server" Text='<%#Eval("Description")%>'/>
                                <asp:Label CssClass="LblParticularity Lbl" runat="server" Text='<%#Eval("Particularity")%>'/>
                                <asp:Label CssClass="LblPrice Lbl" runat="server" Text='<%#Eval("Price")%>' />
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
        </div>
    </form>
</body>
</html>

