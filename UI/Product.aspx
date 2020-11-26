<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="UI.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Info</title>
    <script src="Scripts/jquery.validate.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">
            <asp:Label ID="LblTitle" runat="server" Text="Insert, Delete and Get operations using 3-Tier Architecture"></asp:Label>
            </h1>
            <br />
            <br />
            <table align="center">
                <tr>
                    <td>Product Name :</td>
                    <td>
                        <asp:TextBox ID="txtProductName" runat="server" Width="152px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Please enter product name" ControlToValidate="txtProductName" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Category :</td>
                    <td>
                        <asp:DropDownList ID="ddlCategory" runat="server">
                            <asp:ListItem Value="-1">--Select--</asp:ListItem>
                            <asp:ListItem>Product 1</asp:ListItem>
                            <asp:ListItem>Product 2</asp:ListItem>
                            <asp:ListItem>Product 3</asp:ListItem>
                            <asp:ListItem>Product 4</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" runat="server" ControlToValidate="ddlCategory" Display="Dynamic" ErrorMessage="Please select a category" ForeColor="Red" InitialValue="-1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Product Description:</td>
                    <td>
                        <asp:TextBox ID="txtProductDesc" runat="server" Height="57px" TextMode="MultiLine"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2">MRP:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMRP" runat="server" Width="152px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPrice" runat="server" ControlToValidate="txtMRP" Display="Dynamic" ErrorMessage="Please enter number only" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </td>

                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style1">
                        <asp:Button ID="BtnInsert" runat="server" Text="Insert Product" OnClick="BtnInsert_Click" />
                    </td>
                </tr>
            </table>

            <asp:GridView ID="GridViewGetData" runat="server" OnSelectedIndexChanged="GridViewGetData_SelectedIndexChanged" align="center" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton OnClientClick="return confirm('Do you want to delete the product ?')" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>

    </form>
</body>
</html>
