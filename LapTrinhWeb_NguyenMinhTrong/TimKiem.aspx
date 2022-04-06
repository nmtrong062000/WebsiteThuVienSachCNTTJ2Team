<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.TimKiem" %>

<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="timkiem">
    <div runat="server" id="timkiem"  style="margin: 0 auto; text-align: center; height: 50px; margin-top: 20px;">
        <div class="wrap_search">
             <asp:TextBox ID="txttimkiem" CssClass="txt_search" placeholder="Nhập sách cần tìm..." runat="server"></asp:TextBox>
             <asp:Button ID="btTimKiem1" CssClass="btn_search" runat="server" Text="Tìm Kiếm" />
             <asp:Button ID="btnHuy" CssClass="btn_huy" runat="server" Text="Huỷ" OnClick="btnHuy_Click" />
         </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" SelectCommand="SELECT * FROM SACH WHERE dbo.fuConvertToUnsign1(TenSach) LIKE N'%' + dbo.fuConvertToUnsign1(@name) + '%'">
        <SelectParameters>
                <asp:ControlParameter ControlID="txttimkiem" Name="name" PropertyName="Text" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:DataList ID="DataList1" RepeatColumns="3" runat="server" DataKeyField="MaSach" DataSourceID="SqlDataSource1">
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
        </div>
</asp:Content>
