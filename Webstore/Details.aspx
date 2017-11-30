<%@ Page Language="C#" MasterPageFile="Site1.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Webstore.Details"%>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
        <asp:ListView ID="LstVwProduct" runat="server">
            <ItemTemplate>
                <div class="DetailsDivProduct" onclick="Details()">
                    <div id="imgDiv">
                        <asp:Image class="DetailsImg" runat="server" ImageUrl='<%#Eval("ImagePath")%>'/>
                    </div>
                    <div id="textdiv">
                        <asp:Label Cssclass="DetailsLblName DetailsLbl" runat="server" Text='<%#Eval("Name")%>'/>
                        <asp:Label Cssclass="DetailsLblDescription DetailsLbl" runat="server" Text='<%#Eval("Description")%>'/>
                        <asp:Label CssClass="DetailsLblParticularity DetailsLbl" runat="server" Text='<%#Eval("Particularity")%>'/>
                        <asp:Label CssClass="DetailsLblOldPrice DetailsLbl" runat="server" Text='<%#Eval("OldPrice") + " CHF" + " statt " + Eval("Price") + " CHF"%>' ></asp:Label>
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>