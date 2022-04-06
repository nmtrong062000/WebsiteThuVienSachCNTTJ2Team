<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThongBaoTinTuc.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.ThongBaoTinTuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div class="thongbao_tintuc">
    <div class="btn_thongbao_tintuc">
            <asp:Button ID="btnView1" runat="server" CssClass="btnView" Text="Thông Báo" OnClick="btnView1_Click" CausesValidation="false" />
            <asp:Button ID="btnView2" runat="server" CssClass="btnView" Text="Tin Tức" OnClick="btnView2_Click" CausesValidation="false" />
        </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <a class="ct_thongbao_tintuc1" href="ThongBaoNghiTet.aspx"><img src="../Images/closed.png" alt="Images"/>Thông báo lịch nghỉ tết của thư viện J2Team (01/14/2020)</a>
            <br />
            <a class="ct_thongbao_tintuc1" href="ThongBaoTapHuan.aspx"><img src="../Images/teal-training-slider.png"/>Thông báo đăng kí lớp tập huấn sử dụng thư viện miễn phí (09/30/2019)</a>
            <br />
            <a class="ct_thongbao_tintuc1" href="ThongBaoTangTienPhat.aspx"><img src="../Images/ngac-nhien-trong-tieng-anh.jpg">Thông báo tăng tiền phạt mượn sách quá hạn (09/24/2019)</a>
        </asp:View>
        <asp:View ID="View2" runat="server">
			<a class="ct_thongbao_tintuc1" href="TinTucSpringer.aspx"><img src="../Images/Springer 5.png" alt="Images"/>Nguồn học liệu miễn phí từ nhà xuất bản Springer (04/27/2020)</a>
            <br />
			<a class="ct_thongbao_tintuc1" href="TinTucHoiSachTrucTuyen.aspx"><img src="../Images/94128516_3226853764000369_8178940796259532800_n.jpg"/>Hội sách trực tuyến quốc gia 2020 (04/23/2019)</a>
            <br />
			<a class="ct_thongbao_tintuc1" href="TinTuc10ViecGietThoiGian.aspx"><img src="../Images/90069394_3150643211621425_6669967529311469568_n.jpg" />10 việc làm giúp bạn "giết thời gian" trong mùa dịch. (04/23/2020)</a>
            <br />
            <a class="ct_thongbao_tintuc1" href="TinTucNgaySachVaBanQuyen.aspx"><img src="../Images/72132328_460513477894613_2408055757615398912_n.jpg"/>Ngày Sách và Bản quyền thế giới, Ngày Sách Việt Nam (04/20/2020)</a>
			<br />
            <a class="ct_thongbao_tintuc1" href="#"><img src="../Images/covid.jpg">Phòng chống Covid - 19 (03/27/2020)</a>
        </asp:View>
    </asp:MultiView>
  </div>
</asp:Content>
