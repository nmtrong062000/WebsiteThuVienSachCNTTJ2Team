<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThongTinDG.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.ThongTinDG" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="tttk">
    <div class="thongtindocgia" >
            <p style="font-size: 25px; text-align: center; font-family:  'Roboto Mono', monospace; margin-top: 45px;">Thông tin tài khoản</p>
                <table style="margin-left:50%; font-size:20px; margin-bottom:20px;">
                    <tr>
                        <td>
                            Họ tên:
                        </td>
                        <td>
                            <asp:Label ID="lbhoten" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ngày sinh:
                        </td>
                        <td>
                            <asp:Label ID="lbngaysinh" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Địa chỉ:
                        </td>
                        <td>
                            <asp:Label ID="lbdiachi" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Số điện thoại:
                        </td>
                        <td>
                            <asp:Label ID="lbsdt" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email:
                        </td>
                        <td>
                            <asp:Label ID="lbemail" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
        </div>
    <div class="thongtinmuontra">
            <asp:Button ID="btnView1" runat="server" CssClass="btnView" Text="Đang Mượn" OnClick="btnView1_Click" CausesValidation="false" />
            <asp:Button ID="btnView2" runat="server" CssClass="btnView" Text="Đã Mượn" OnClick="btnView2_Click" CausesValidation="false" />
        <asp:Button ID="btnView3" runat="server" CssClass="btnView" Text="Đổi mật khẩu" OnClick="btnView3_Click" CausesValidation="false" />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <br />
                <asp:Button ID="btnGiaHan" CssClass="btnView1" runat="server" Text="Gia Hạn" OnClick="btnGiaHan_Click" />
                <br />
                <asp:Label ID="lbThongBaoLoi" runat="server" Text=""></asp:Label>
                <br />
                <asp:GridView GridLines="None" PagerSettings-LastPageText=" &gt;&gt;" PagerSettings-FirstPageText=" &lt;&lt;" PagerSettings-NextPageText=" &gt;" PagerSettings-PreviousPageText=" &lt;" Width="75%" ID="gvDangMuon" runat="server" CssClass="docgia">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#6699FF" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#6699FF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#6699FF" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
                <PagerSettings Position="TopAndBottom" />
                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:GridView GridLines="None" PagerSettings-LastPageText=" &gt;&gt;" PagerSettings-FirstPageText=" &lt;&lt;" PagerSettings-NextPageText=" &gt;" PagerSettings-PreviousPageText=" &lt;" Width="75%" ID="gvDaMuon" runat="server" CssClass="docgia">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#6699FF" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#6699FF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#6699FF" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
                <PagerSettings Position="TopAndBottom" />
                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table style="margin-left:47%;margin-top:20px;">
                    <tr>
                        <td>
                            <asp:Label ID="lbmkht" runat="server" Text="Nhập mật khẩu hiện tại:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtmkht" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="dk_rong" ID="rfvmkht" runat="server" ControlToValidate="txtmkht" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbmkm" runat="server" Text="Nhập mật khẩu mới:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtmkm" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="dk_rong" ID="rfvmkm" runat="server" ControlToValidate="txtmkm" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbnlmkm" runat="server" Text="Nhập lại mật khẩu mới:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtnlmkm" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="dk_rong" ID="rfvnlmkm" runat="server" ControlToValidate="txtnlmkm" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:CompareValidator ID="cvNLMK" ControlToValidate="txtnlmkm" runat="server" ControlToCompare="txtmkm" ErrorMessage="Mật khẩu không trùng khớp!" ForeColor="#FF3300"></asp:CompareValidator>
                            <br />
                            <asp:Button ID="btndmk" runat="server" CssClass="btnView1" Text="Xác nhận đổi mật khẩu" OnClick="btndmk_Click" />
                <br />
                <asp:Label ID="lbLoiMK" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
    </div>
</asp:Content>
