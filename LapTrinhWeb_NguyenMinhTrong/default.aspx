<%@ Page Title="THƯ VIỆN J2TEAM - TRANG CHỦ" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong._default" %>

<%@ Register Src="~/SanPhamGioiThieu.ascx" TagPrefix="uc1" TagName="SanPhamGioiThieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <p style="font-size: 25px; text-align: center; font-family:  'Roboto Mono', monospace; margin-top: 45px;">THƯ VIỆN J2TEAM XIN GIỚI THIỆU ĐẾN BẠN ĐỘC GIẢ NHỮNG CUỐN SÁCH HOT NHẤT</p>
    <div class="sachgt">
        <uc1:SanPhamGioiThieu runat="server" id="SanPhamGioiThieu" />
        </div></asp:Content>
