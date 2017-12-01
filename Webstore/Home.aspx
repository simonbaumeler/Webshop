<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="Site1.Master" CodeBehind="Home.aspx.cs" Inherits="Webstore.Home" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
        <asp:ListView ID="LstVwProductsHome" runat="server">
            <ItemTemplate>
                <div class="DivProduct" onclick="Details('<%#Eval("Name")%>')">
                    <asp:Image class="Img" runat="server" ImageUrl='<%#Eval("ImagePath")%>'/>
                    <asp:Label Cssclass="LblName Lbl" runat="server" Text='<%#Eval("Name")%>'/>
                    <asp:Label CssClass="LblPrice Lbl" runat="server" Text='<%#Eval("Price") + " CHF"%>' />
                    <asp:Label CssClass="LblOldPrice Lbl" runat="server" Text='<%#Eval("OldPrice") + " CHF"%>' ></asp:Label>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>


