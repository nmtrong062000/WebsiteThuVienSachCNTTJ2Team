<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SanPhamGioiThieu.ascx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.SanPhamGioiThieu" %>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" SelectCommand="SELECT TOP(5) [MaSach], [TenSach], [HinhMinhHoa], [SoLanXem] FROM [SACH] order by SoLanXem desc"></asp:SqlDataSource>
<asp:DataList ID="DataList1" runat="server" RepeatColumns="3" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <div class="wrap_content">
    <div class="mot_sach">
        <asp:HyperLink ID="HyperLink1" CssClass="linksach1" runat="server" NavigateUrl='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>' Text='<%# Eval("TenSach") %>'></asp:HyperLink>
        <asp:HyperLink ID="ImgSach" runat="server" NavigateUrl='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>'>
            <img src='<%# "../Images/Sach/"+Eval("HinhMinhHoa") %>' alt="Hình ảnh sách" class="hinhsach1"/>
        </asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text='<%#"Số lần xem: "+ Eval("SoLanXem") %>'></asp:Label>
        <a href='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>'><img class="nutdownload" src="../Images/dowload-button.png" /></a>
    </div>
            </div>
        </ItemTemplate>
</asp:DataList>
