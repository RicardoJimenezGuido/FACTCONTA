<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SISTEMA.aspx.cs" Inherits="FACTCONTA.SISTEMA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            text-align: center;
            color: #000000;
        }
        .auto-style5 {
            color: #000000;
        }
        .auto-style3 {
            height: 71px;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style6 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4"><strong>SISTEMA FACTCONTA</strong></td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:TextBox ID="txt_Consultar" runat="server" Height="35px" Width="377px"></asp:TextBox>
                                <asp:Button ID="btn_Consultar" runat="server" Height="39px" OnClick="btn_Consultar_Click" Text="CONSULTAR" />
                                <asp:Button ID="btn_Borrar" runat="server" Height="39px" OnClick="btn_Borrar_Click" Text="BORRAR" />
                            </td>
                            <td class="auto-style3"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style6"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbl_Mensaje" runat="server" ForeColor="#009933" Text="Mensaje"></asp:Label>
                            </td>
                            <td class="auto-style2"></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="dgv_Conta" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="NUM_COMPROB" DataSourceID="SqlDataSource1" ForeColor="Black">
                                    <Columns>
                                        <asp:BoundField DataField="NUM_COMPROB" HeaderText="NUM_COMPROB" ReadOnly="True" SortExpression="NUM_COMPROB" />
                                        <asp:BoundField DataField="FCH_COMPROB" HeaderText="FCH_COMPROB" SortExpression="FCH_COMPROB" />
                                        <asp:BoundField DataField="MTO_COMPROB" HeaderText="MTO_COMPROB" SortExpression="MTO_COMPROB" />
                                        <asp:BoundField DataField="STA_COMPROB" HeaderText="STA_COMPROB" SortExpression="STA_COMPROB" />
                                        <asp:BoundField DataField="TPO_COMPROB" HeaderText="TPO_COMPROB" SortExpression="TPO_COMPROB" />
                                        <asp:BoundField DataField="COD_USUARIO_AS" HeaderText="COD_USUARIO_AS" SortExpression="COD_USUARIO_AS" />
                                        <asp:BoundField DataField="DES_ASIENTO" HeaderText="DES_ASIENTO" SortExpression="DES_ASIENTO" />
                                        <asp:BoundField DataField="COD_PLTS" HeaderText="COD_PLTS" SortExpression="COD_PLTS" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
