<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CTSach.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.CTSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-top:45px; ">
    <asp:DataList ID="dlctsach" runat="server">
        <ItemTemplate>
            <div>
            <table style="margin-left:30%;">
                <tr>
                    <td style="text-align:center; font-size:20px; font-weight:bold;">
                        <asp:Label runat="server" ID="Label1" Text='<%#Eval("TenSach") %>' ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td rowspan="5">
                        <div align="center">
                            <img src='<%# "../Images/Sach/"+Eval("HinhMinhHoa") %>' alt="Hình ảnh sách" class="hinhsach1"/>
                        </div>
                    </td>
                    <td>
                        <p>Tác Giả: </p>
                        <asp:Label runat="server" ID="lbtacgia" Text='<%# Eval("TacGia") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Nhà Xuất Bản: </p>
            <asp:Label runat="server" ID="lbnxb" Text='<%#Eval("NXB") %>'></asp:Label>
            
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Năm Xuất Bản: </p>
            <asp:Label runat="server" ID="lbnamxb" Text='<%#Eval("NamXB") %>'></asp:Label>
            
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Thể Loại: </p>
            <asp:Label runat="server" ID="lbtheloai" Text='<%#Eval("TenChuDe") %>'></asp:Label>
            
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Số Lần Xem: </p>
            <asp:Label runat="server" ID="lbsolanxem" Text='<%#Eval("SoLanXem") %>'></asp:Label>
            
                    </td>
                </tr>
                <%--<tr>
                    <td colspan="2" style="width:650px;">
                        
            
                    </td>
                </tr>--%>
            </table>
                <div style="padding:20px; margin-bottom:250px;"><p>Mô Tả: </p>
            <asp:Label runat="server" ID="lbmota" Text='<%#Eval("MoTa") %>'></asp:Label></div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    </div>
</asp:Content>
