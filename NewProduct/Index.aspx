<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="NewProduct.Index" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <div class="jumbotron jumbotron-fluid">
        <div class="container" background-image="url(grocer2.jpeg)">
            <h1 class="display-4">Product Management</h1>
            <p class="lead">Update and modify your inventory details here</p>
        </div>
    </div>
    <div class="maindiv">
    <form id="form2" runat="server">
    <div>
        <asp:HiddenField  ID="hfProductID" runat="server" />
        <div class="formdiv">
        <table class="table">
            
            <tr>
                <td>
                    <asp:Label Text="Product" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtProduct" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Price" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPrice" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Count" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtCount" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Description" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtDescription" runat="server" />
                </td>
            </tr>
            
            <tr>
                <td colspan="2" style="align-items:center">
                    <asp:Button Text="Save" ID="btnSave" runat="server" OnClick="btnSave_Click" type="button" class="btn btn-success" style="margin:5px"/>   
                    <asp:Button Text="Delete" ID="btnDelete" runat="server" OnClick="btnDelete_Click" type="button" class="btn btn-danger" style="margin:5px"/>   
                    <asp:Button Text="Clear" ID="btnClear" runat="server" OnClick="btnClear_Click" type="button" class="btn btn-info" style="margin:5px"/>
                </td>
            </tr>
      
            <tr class="smsg">
                <td colspan="2">
                    <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                </td>
            </tr>
            <tr class="emsg">
                <td colspan="2">
                    <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                </td>
            </tr>
           
        </table>
        </div>
        <br/. />
        <div class="tablediv">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <h3><center><b><u>Available Stock</u></b></center></h3>
        <asp:GridView ID="gvProduct" class="table table-bordered table-condensed table-responsive table-hover " runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Product" HeaderText="Product" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="Count" HeaderText="Count" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton Text="Select" ID="lnkSelect" CommandArgument='<%# Eval("ProductID") %>' runat="server" OnClick="lnkSelect_OnClick"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>
    </div>
    </form>
    </div>
</body>
</html>