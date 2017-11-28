<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Webstore.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LblTitle" runat="server" Text="BBZW Sursee Store"></asp:Label>
                <div>
                    <asp:ListView ID="LstVwProducts" runat="server">
                        <ItemTemplate>
                            <asp:Image CssClass="Img" runat="server" ImageUrl='<%#Eval("ImagePath")%>'/>
                            <asp:Label CssClass="LblName" runat="server" Text='<%#Eval("Name")%>'/>
                            <asp:Label CssClass="LblDescription" runat="server" Text='<%#Eval("Description")%>'/>
                            <asp:Label CssClass="LblParticularity" runat="server" Text='<%#Eval("Particularity")%>'/>
                            <asp:Label CssClass="LblPrice" runat="server" Text='<%#Eval("Price")%>' />
                        </ItemTemplate>
                    </asp:ListView>
                </div>
        </div>
    </form>
</body>
</html>
