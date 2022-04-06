<%@ Page Title="KHÁC" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Khac.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.Khac" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" SelectCommand="SELECT [MaSach], [TenSach], [HinhMinhHoa], [MaCD] FROM [SACH] where MaCD=7"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
                    <div class="wrap_content">
                        <div class="mot_sach">
                            <asp:HyperLink ID="HyperLink1" CssClass="linksach1" runat="server" NavigateUrl='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>' Text='<%# Eval("TenSach") %>'></asp:HyperLink>
                            <asp:HyperLink ID="ImgSach" runat="server" NavigateUrl='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>'>
                                <img src='<%# "../Images/Sach/"+Eval("HinhMinhHoa") %>' alt="Hình ảnh sách" class="hinhsach1"/>
                            </asp:HyperLink>
                            <br />
                            <br />
                            <a href='<%#"CTSach.aspx?MaSach=" + Eval("MaSach") %>'><img class="nutdownload" src="../Images/dowload-button.png" /></a>
                        </div>
                    </div>
                </ItemTemplate>
    </asp:DataList>
</asp:Content>

