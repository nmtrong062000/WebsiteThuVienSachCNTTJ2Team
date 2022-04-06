<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SachDeCu.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.SachDeCu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="thongbao_tintuc">
    <div class="btn_thongbao_tintuc">
            <asp:Button ID="btnView1" runat="server" CssClass="btnView" Text="Sách Mới Nhất" OnClick="btnView1_Click" CausesValidation="false" />
            <asp:Button ID="btnView2" runat="server" CssClass="btnView" Text="Sách Xem Nhiều" OnClick="btnView2_Click" CausesValidation="false" />
        <asp:Button ID="Button1" runat="server" CssClass="btnView" Text="Sách Download Nhiều" OnClick="btnView3_Click" CausesValidation="false" />
        </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" SelectCommand="SELECT TOP(5) [MaSach], [TenSach], [HinhMinhHoa], [NgayCapNhat] FROM [SACH] order by NgayCapNhat desc"></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" RepeatColumns="3" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                   <div class="wrap_content">
                        <div class="mot_sach">
                            <asp:HyperLink ID="HyperLink1" CssClass="linksach1" runat="server" NavigateUrl='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>' Text='<%# Eval("TenSach") %>'></asp:HyperLink>
                            <asp:HyperLink ID="ImgSach" runat="server" NavigateUrl='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>'>
                                <img src='<%# "../Images/Sach/"+Eval("HinhMinhHoa") %>' alt="Hình ảnh sách" class="hinhsach1"/>
                            </asp:HyperLink>
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text='<%#"Ngày cập nhật: "+ Eval("NgayCapNhat") %>'></asp:Label>
                            <a href='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>'><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" SelectCommand="SELECT TOP(5) [MaSach], [TenSach], [HinhMinhHoa], [SoLanXem] FROM [SACH] order by SoLanXem desc"></asp:SqlDataSource>
            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2"  RepeatColumns="3">
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
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" SelectCommand="SELECT TOP(5) [MaSach], [TenSach], [HinhMinhHoa], [LuotDownload] FROM [SACH] order by LuotDownload desc"></asp:SqlDataSource>
            <asp:DataList ID="DataList3" runat="server" DataKeyField="MaSach" DataSourceID="SqlDataSource3" RepeatColumns="3">
                <ItemTemplate>
                    <div class="wrap_content">
                        <div class="mot_sach">
                            <asp:HyperLink ID="HyperLink1" CssClass="linksach1" runat="server" NavigateUrl='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>' Text='<%# Eval("TenSach") %>'></asp:HyperLink>
                            <asp:HyperLink ID="ImgSach" runat="server" NavigateUrl='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>'>
                                <img src='<%# "../Images/Sach/"+Eval("HinhMinhHoa") %>' alt="Hình ảnh sách" class="hinhsach1"/>
                            </asp:HyperLink>
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text='<%#"Số lượt download: "+ Eval("LuotDownload") %>'></asp:Label>
                            <a href='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>'><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </asp:View>
    </asp:MultiView>
  </div>
</asp:Content>

