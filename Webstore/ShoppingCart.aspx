<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Webstore.ShoppingCart" EnableEventValidation="false"%>
<asp:Content ID="ContentCart" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:ListView ID="LstVwProductCart" runat="server">
            <ItemTemplate>
                <div class="CartDivProduct">
                        <asp:Image class="CartImg" runat="server" ImageUrl='<%#Eval("ImagePath")%>'/>
                        <asp:Label Cssclass="CartLblName CartLbl" runat="server" Text='<%#Eval("Name")%>'/>
                        <asp:Label CssClass="CartLblPrice CartLbl" runat="server" Text='<%#Eval("Price") + " CHF" + " statt " + Eval("OldPrice") + " CHF"%>' ></asp:Label>
                        <asp:ImageButton ID="DeleteItemFromCart" runat="server" ImageUrl="Assets/Img/ic_remove_shopping_cart_black_24dp_2x.png" AlternateText="Add to Shopping Cart" OnCommand="DeleteItemFromCart_OnCommand" CommandArgument='<%#Eval("ID")%>'/>               
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
