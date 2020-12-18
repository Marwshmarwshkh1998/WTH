<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="defult2.aspx.cs" Inherits="defult2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <asp:CheckBox ID="CheckBox1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" Text="SUBMIT" onclick="Button2_Click" />

    <br />

        <asp:TextBox runat="server" id="NameField" />
        <asp:Button runat="server" id="SubmitForm" onclick="SubmitForm_Click" text="Submit & set name" />
        <asp:Button runat="server" id="RefreshPage" text="Just submit" />
        <br /><br />
        Name retrieved from ViewState: <asp:Label runat="server" id="NameLabel" />

    <br />
    <asp:DropDownList runat="server" id="ColorSelector" autopostback="true" onselectedindexchanged="ColorSelector_IndexChanged">
        <asp:ListItem value="White" selected="True">Select color...</asp:ListItem>
        <asp:ListItem value="Red">Red</asp:ListItem>
        <asp:ListItem value="Green">Green</asp:ListItem>
        <asp:ListItem value="Blue">Blue</asp:ListItem>
    </asp:DropDownList>
     <asp:Button ID="BodyTag" runat="server" Text="SUBMIT" />
    <br />
    <asp:DropDownList runat="server" id="DropDownList1" autopostback="true" onselectedindexchanged="ColorSelector1_IndexChanged">
        <asp:ListItem value="White" selected="True">Select color...</asp:ListItem>
        <asp:ListItem value="Red">Red</asp:ListItem>
        <asp:ListItem value="Green">Green</asp:ListItem>
        <asp:ListItem value="Blue">Blue</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button3" runat="server" Text="SUBMIT" />
    
    <br />
      <asp:TextBox runat="server" id="TextBox3" />
        <asp:Button runat="server" id="Button4" onclick="SubmitForm_Click1" text="Submit & set name" />
        <asp:Button runat="server" id="Button5" text="Just submit" />
        <br /><br />
        Name retrieved from application: <asp:Label runat="server" id="Label1" />

    <br />
    <asp:HiddenField ID="TextBox4" runat="server"></asp:HiddenField>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:Button ID="Button6" runat="server" Text="Button" onclick="btn6" />
</asp:Content>
       