<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThongTinAD.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.ThongTinAD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="tttk">
    <div class="thongtinadmin" >
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
    </div>
</asp:Content>
