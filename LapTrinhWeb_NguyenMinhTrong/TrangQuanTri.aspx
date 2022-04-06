<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="TrangQuanTri.aspx.cs" Inherits="LapTrinhWeb_NguyenMinhTrong.TrangQuanTri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="trangadmin" ID="trangqt" runat="server">
    <div class="Admin_wrap">
        <p class="Admin_tentrang" style="font-size:24px;">TRANG QUẢN TRỊ</p>
        <div>
            <asp:Button ID="btnView1" runat="server" CssClass="btnView" Text="Sách" OnClick="btnView1_Click" CausesValidation="false" />
            <asp:Button ID="btnView2" runat="server" CssClass="btnView" Text="Độc Giả" OnClick="btnView2_Click" CausesValidation="false" />
            <asp:Button ID="btnView3" runat="server" CssClass="btnView" Text="Nhà Cung Cấp" OnClick="btnView3_Click" CausesValidation="false" />
            <asp:Button ID="btnView4" runat="server" CssClass="btnView" Text="Phiếu Mượn" OnClick="btnView4_Click" CausesValidation="false" />
            <asp:Button ID="btnView5" runat="server" CssClass="btnView" Text="Chi Tiết Phiếu Mượn" CausesValidation="false" OnClick="btnView5_Click" />
            <asp:Button ID="btnView6" runat="server" CssClass="btnView" Text="Góp ý" CausesValidation="false" OnClick="btnView6_Click"/>
        </div>
        <div>
            <asp:Label ID="lbLoi" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <div class="vungchonthem">
                <br />
                <asp:Button ID="btnThemSach" CssClass="btnView1" runat="server" Text="THÊM SÁCH MỚI" OnClick="btnThemSach_Click" />
            </div>
            <div class="Ad_pro_wrap" id="VUNGSACH" runat="server">
                <div class="Ad_pro_container">

                    <p >Tên Sách</p>
                    <asp:TextBox ID="txtnew_name" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="kiemtra" ControlToValidate="txtnew_name" runat="server" ErrorMessage="Tên sách không được bỏ trống"></asp:RequiredFieldValidator>
                    <p >Mã Chủ Đề</p>
                    <asp:TextBox ID="txt_MaCD" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="kiemtra" ControlToValidate="txt_MaCD" runat="server" ErrorMessage="Mã chủ đề không được bỏ trống"></asp:RequiredFieldValidator>
                    <p >Nhà Xuất Bản</p>
                    <asp:TextBox ID="txtnxb" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="kiemtra" ControlToValidate="txtnxb" runat="server" ErrorMessage="Nhà xuất bản không được bỏ trống"></asp:RequiredFieldValidator>
                    <p >Năm Xuất Bản</p>
                    <asp:TextBox ID="txtnamxb" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" CssClass="kiemtra" ControlToValidate="txtnamxb" runat="server" ErrorMessage="Năm xuất bản không được bỏ trống"></asp:RequiredFieldValidator>
                    <p >Tác Giả</p>
                    <asp:TextBox ID="txttg" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="kiemtra" ControlToValidate="txttg" runat="server" ErrorMessage="Tên tác giả không được bỏ trống"></asp:RequiredFieldValidator>
                    <p >Ngày Cập Nhật</p>
                    <asp:TextBox ID="txtngaycn" runat="server" TextMode="Date"></asp:TextBox><br />
                    <script>
                      $(function() {
                        $( "#txtngaycn" ).datepicker({dateFormat: "MM-dd-yyyy"});
                      });
                    </script>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" CssClass="kiemtra" ControlToValidate="txtngaycn" runat="server" ErrorMessage="Ngày cập nhật không được bỏ trống"></asp:RequiredFieldValidator>
                    <p >Link hình</p>
                    <asp:TextBox ID="txtimg_link" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="kiemtra" ControlToValidate="txtimg_link" runat="server" ErrorMessage="Hình sách không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>&nbsp </p>
                    <asp:Button ID="btnThem" CssClass="btnView2" runat="server" Text="Thêm" OnClick="btnThem_Click" />
                    <asp:Button ID="btnHuy" CssClass="btnView2" runat="server" Text="Hủy" OnClick="btnHuy_Click" CausesValidation="False" />
                </div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" SelectCommand="SELECT [MaSach], [TenSach], [MaCD], [NXB], [TacGia], [MaNCC], [NamXB], convert(varchar,[NgayCapNhat],103) as NgayCapNhat, [HinhMinhHoa] FROM [SACH]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [SACH] WHERE [MaSach] = @original_MaSach AND (([TenSach] = @original_TenSach) OR ([TenSach] IS NULL AND @original_TenSach IS NULL)) AND (([MaCD] = @original_MaCD) OR ([MaCD] IS NULL AND @original_MaCD IS NULL)) AND (([NXB] = @original_NXB) OR ([NXB] IS NULL AND @original_NXB IS NULL)) AND (([TacGia] = @original_TacGia) OR ([TacGia] IS NULL AND @original_TacGia IS NULL)) AND (([MaNCC] = @original_MaNCC) OR ([MaNCC] IS NULL AND @original_MaNCC IS NULL)) AND (([NamXB] = @original_NamXB) OR ([NamXB] IS NULL AND @original_NamXB IS NULL)) AND (([NgayCapNhat] = @original_NgayCapNhat) OR ([NgayCapNhat] IS NULL AND @original_NgayCapNhat IS NULL)) AND (([HinhMinhHoa] = @original_HinhMinhHoa) OR ([HinhMinhHoa] IS NULL AND @original_HinhMinhHoa IS NULL))" InsertCommand="INSERT INTO [SACH] ([TenSach], [MaCD], [NXB], [TacGia], [MaNCC], [NamXB], [NgayCapNhat], [HinhMinhHoa]) VALUES (@TenSach, @MaCD, @NXB, @TacGia, @MaNCC, @NamXB, @NgayCapNhat, @HinhMinhHoa)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [SACH] SET [TenSach] = @TenSach, [MaCD] = @MaCD, [NXB] = @NXB, [TacGia] = @TacGia, [MaNCC] = @MaNCC, [NamXB] = @NamXB, [NgayCapNhat] = @NgayCapNhat, [HinhMinhHoa] = @HinhMinhHoa WHERE [MaSach] = @original_MaSach AND (([TenSach] = @original_TenSach) OR ([TenSach] IS NULL AND @original_TenSach IS NULL)) AND (([MaCD] = @original_MaCD) OR ([MaCD] IS NULL AND @original_MaCD IS NULL)) AND (([NXB] = @original_NXB) OR ([NXB] IS NULL AND @original_NXB IS NULL)) AND (([TacGia] = @original_TacGia) OR ([TacGia] IS NULL AND @original_TacGia IS NULL)) AND (([MaNCC] = @original_MaNCC) OR ([MaNCC] IS NULL AND @original_MaNCC IS NULL)) AND (([NamXB] = @original_NamXB) OR ([NamXB] IS NULL AND @original_NamXB IS NULL)) AND (([NgayCapNhat] = @original_NgayCapNhat) OR ([NgayCapNhat] IS NULL AND @original_NgayCapNhat IS NULL)) AND (([HinhMinhHoa] = @original_HinhMinhHoa) OR ([HinhMinhHoa] IS NULL AND @original_HinhMinhHoa IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaSach" Type="Int32" />
                    <asp:Parameter Name="original_TenSach" Type="String" />
                    <asp:Parameter Name="original_MaCD" Type="Int32" />
                    <asp:Parameter Name="original_NXB" Type="String" />
                    <asp:Parameter Name="original_TacGia" Type="String" />
                    <asp:Parameter Name="original_MaNCC" Type="Int32" />
                    <asp:Parameter Name="original_NamXB" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_NgayCapNhat" />
                    <asp:Parameter Name="original_HinhMinhHoa" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenSach" Type="String" />
                    <asp:Parameter Name="MaCD" Type="Int32" />
                    <asp:Parameter Name="NXB" Type="String" />
                    <asp:Parameter Name="TacGia" Type="String" />
                    <asp:Parameter Name="MaNCC" Type="Int32" />
                    <asp:Parameter Name="NamXB" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="NgayCapNhat" />
                    <asp:Parameter Name="HinhMinhHoa" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSach" Type="String" />
                    <asp:Parameter Name="MaCD" Type="Int32" />
                    <asp:Parameter Name="NXB" Type="String" />
                    <asp:Parameter Name="TacGia" Type="String" />
                    <asp:Parameter Name="MaNCC" Type="Int32" />
                    <asp:Parameter Name="NamXB" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="NgayCapNhat" />
                    <asp:Parameter Name="HinhMinhHoa" Type="String" />
                    <asp:Parameter Name="original_MaSach" Type="Int32" />
                    <asp:Parameter Name="original_TenSach" Type="String" />
                    <asp:Parameter Name="original_MaCD" Type="Int32" />
                    <asp:Parameter Name="original_NXB" Type="String" />
                    <asp:Parameter Name="original_TacGia" Type="String" />
                    <asp:Parameter Name="original_MaNCC" Type="Int32" />
                    <asp:Parameter Name="original_NamXB" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_NgayCapNhat" />
                    <asp:Parameter Name="original_HinhMinhHoa" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:GridView GridLines="None" Width="100%" ID="gvSach" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSach" DataSourceID="SqlDataSource1" AllowPaging="True" PagerSettings-LastPageText=" &gt;&gt;" PagerSettings-FirstPageText=" &lt;&lt;" PagerSettings-NextPageText=" &gt;" PagerSettings-PreviousPageText=" &lt;" OnRowCommand="GridView1_RowCommand" OnRowUpdating="gvSach_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="MaSach" HeaderText="Mã Sách" InsertVisible="False" ReadOnly="True" SortExpression="MaSach">
                    </asp:BoundField>
                    <asp:BoundField DataField="TenSach" HeaderText="Tên Sách" SortExpression="TenSach">
                    </asp:BoundField>
                    <asp:BoundField DataField="MaCD" HeaderText="Mã Chủ Đề" SortExpression="MaCD">
                    </asp:BoundField>
                    <asp:BoundField DataField="NXB" HeaderText="NXB" SortExpression="NXB">
                    </asp:BoundField>
                    <asp:BoundField DataField="TacGia" HeaderText="Tác Giả" SortExpression="TacGia">
                    </asp:BoundField>
                    <asp:BoundField DataField="MaNCC" HeaderText="Mã NCC" SortExpression="MaNCC">
                    </asp:BoundField>
                    <asp:BoundField DataField="NamXB" HeaderText="Năm XB" SortExpression="NamXB" />
                    <asp:BoundField DataField="NgayCapNhat" HeaderText="Ngày Cập Nhật" SortExpression="NgayCapNhat" DataFormatString="{0:MM/dd/yyyy}"/>
                    <asp:BoundField DataField="HinhMinhHoa" HeaderText="Hình Sách" SortExpression="HinhMinhHoa">
                    </asp:BoundField>
                    <asp:ButtonField CommandName="Xoa" Text="Xoá" />
                    <asp:CommandField CancelText="Huỷ" EditText="Sửa" ShowEditButton="True" UpdateText="Lưu" />
                </Columns>
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
            <div class="vungchonthem">
                <asp:Button ID="btnThemDG" CssClass="btnView1" runat="server" Text="THÊM ĐỘC GIẢ MỚI" OnClick="btnThemDG_Click1" />
            </div>
            <div class="Ad_pro_wrap" id="VUNGDOCGIA" runat="server">
                <div class="Ad_pro_container">
                    <p >Họ và Tên:</p>
                    <asp:TextBox ID="txttendg" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="kiemtra" ControlToValidate="txttendg" runat="server" ErrorMessage="Họ và tên không được bỏ trống"></asp:RequiredFieldValidator>
                    <p >Ngày Sinh:</p>
                    <asp:TextBox ID="txtnsdg" runat="server" TextMode="Date"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="kiemtra" ControlToValidate="txtnsdg" runat="server" ErrorMessage="Ngày sinh không được bỏ trống"></asp:RequiredFieldValidator>
                    <p >Địa Chỉ:</p>
                    <asp:TextBox ID="txtdcdg" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="kiemtra" ControlToValidate="txtdcdg" runat="server" ErrorMessage="Địa chỉ không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>Điện Thoại:</p>
                    <asp:TextBox ID="txtsdtdg" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" CssClass="kiemtra" ControlToValidate="txtsdtdg" runat="server" ErrorMessage="Số điện thoại không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>Email:</p>
                    <asp:TextBox ID="txtemaildg" runat="server" TextMode="Email"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" CssClass="kiemtra" ControlToValidate="txtemaildg" runat="server" ErrorMessage="Email không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>Tên Đăng Nhập:</p>
                    <asp:TextBox ID="txttendndg" runat="server"></asp:TextBox><br />
                    <p>Mật Khẩu:</p>
                    <asp:TextBox ID="txtmkdg" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" CssClass="kiemtra" ControlToValidate="txtmkdg" runat="server" ErrorMessage="Mật khẩu không được bỏ trống"></asp:RequiredFieldValidator>
                    <script>
                      $(function() {
                        $( "#txtnsdg" ).datepicker({dateFormat: "MM-dd-yyyy"});
                      });
                    </script><p>&nbsp </p>
                    <asp:Button ID="btnThem1" CssClass="btnView2" runat="server" Text="Thêm" OnClick="btnThem1_Click" />
                    <asp:Button ID="btnHuy1" CssClass="btnView2" runat="server" Text="Hủy" OnClick="btnHuy1_Click" CausesValidation="False" />
                </div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" SelectCommand="SELECT [MaDG], [HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], convert(varchar,[NgaySinh],103) as NgaySinh, [Email] FROM [DOCGIA]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [DOCGIA] WHERE [MaDG] = @original_MaDG AND (([HoTenDG] = @original_HoTenDG) OR ([HoTenDG] IS NULL AND @original_HoTenDG IS NULL)) AND (([DiaChiDG] = @original_DiaChiDG) OR ([DiaChiDG] IS NULL AND @original_DiaChiDG IS NULL)) AND (([DienThoaiDG] = @original_DienThoaiDG) OR ([DienThoaiDG] IS NULL AND @original_DienThoaiDG IS NULL)) AND (([TenDN] = @original_TenDN) OR ([TenDN] IS NULL AND @original_TenDN IS NULL)) AND (([MatKhau] = @original_MatKhau) OR ([MatKhau] IS NULL AND @original_MatKhau IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))" InsertCommand="INSERT INTO [DOCGIA] ([HoTenDG], [DiaChiDG], [DienThoaiDG], [TenDN], [MatKhau], [NgaySinh], [Email]) VALUES (@HoTenDG, @DiaChiDG, @DienThoaiDG, @TenDN, @MatKhau, @NgaySinh, @Email)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [DOCGIA] SET [HoTenDG] = @HoTenDG, [DiaChiDG] = @DiaChiDG, [DienThoaiDG] = @DienThoaiDG, [TenDN] = @TenDN, [MatKhau] = @MatKhau, [NgaySinh] = @NgaySinh, [Email] = @Email WHERE [MaDG] = @original_MaDG AND (([HoTenDG] = @original_HoTenDG) OR ([HoTenDG] IS NULL AND @original_HoTenDG IS NULL)) AND (([DiaChiDG] = @original_DiaChiDG) OR ([DiaChiDG] IS NULL AND @original_DiaChiDG IS NULL)) AND (([DienThoaiDG] = @original_DienThoaiDG) OR ([DienThoaiDG] IS NULL AND @original_DienThoaiDG IS NULL)) AND (([TenDN] = @original_TenDN) OR ([TenDN] IS NULL AND @original_TenDN IS NULL)) AND (([MatKhau] = @original_MatKhau) OR ([MatKhau] IS NULL AND @original_MatKhau IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaDG" Type="Int32" />
                    <asp:Parameter Name="original_HoTenDG" Type="String" />
                    <asp:Parameter Name="original_DiaChiDG" Type="String" />
                    <asp:Parameter Name="original_DienThoaiDG" Type="String" />
                    <asp:Parameter Name="original_TenDN" Type="String" />
                    <asp:Parameter Name="original_MatKhau" Type="String" />
                    <asp:Parameter Name="original_NgaySinh" Type="DateTime" />
                    <asp:Parameter Name="original_Email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="HoTenDG" Type="String" />
                    <asp:Parameter Name="DiaChiDG" Type="String" />
                    <asp:Parameter Name="DienThoaiDG" Type="String" />
                    <asp:Parameter Name="TenDN" Type="String" />
                    <asp:Parameter Name="MatKhau" Type="String" />
                    <asp:Parameter Name="NgaySinh" Type="DateTime" />
                    <asp:Parameter Name="Email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HoTenDG" Type="String" />
                    <asp:Parameter Name="DiaChiDG" Type="String" />
                    <asp:Parameter Name="DienThoaiDG" Type="String" />
                    <asp:Parameter Name="TenDN" Type="String" />
                    <asp:Parameter Name="MatKhau" Type="String" />
                    <asp:Parameter Name="NgaySinh" Type="DateTime" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="original_MaDG" Type="Int32" />
                    <asp:Parameter Name="original_HoTenDG" Type="String" />
                    <asp:Parameter Name="original_DiaChiDG" Type="String" />
                    <asp:Parameter Name="original_DienThoaiDG" Type="String" />
                    <asp:Parameter Name="original_TenDN" Type="String" />
                    <asp:Parameter Name="original_MatKhau" Type="String" />
                    <asp:Parameter Name="original_NgaySinh" Type="DateTime" />
                    <asp:Parameter Name="original_Email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gvDocGia" Width="100%" GridLines="None" runat="server" AllowPaging="True" PagerSettings-LastPageText=" &gt;&gt;" PagerSettings-FirstPageText=" &lt;&lt;" PagerSettings-NextPageText=" &gt;" PagerSettings-PreviousPageText=" &lt;" AutoGenerateColumns="False" DataKeyNames="MaDG" DataSourceID="SqlDataSource2" OnRowCommand="gvDocGia_RowCommand" OnRowUpdating="gvDocGia_RowUpdating" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="MaDG" HeaderText="Mã Độc Giả" InsertVisible="False" ReadOnly="True" SortExpression="MaDG" />
                    <asp:BoundField DataField="HoTenDG" HeaderText="Tên Độc Giả" SortExpression="HoTenDG" />
                    <asp:BoundField DataField="DiaChiDG" HeaderText="Địa Chỉ" SortExpression="DiaChiDG" />
                    <asp:BoundField DataField="DienThoaiDG" HeaderText="Điện Thoại" SortExpression="DienThoaiDG" />
                    <asp:BoundField DataField="TenDN" HeaderText="Tên ĐN" SortExpression="TenDN" />
                    <asp:BoundField DataField="MatKhau" HeaderText="Mật Khẩu" SortExpression="MatKhau" />
                    <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" SortExpression="NgaySinh" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:ButtonField CommandName="XoaDG" Text="Xoá" />
                    <asp:CommandField CancelText="Huỷ" EditText="Sửa" ShowEditButton="True" UpdateText="Lưu" />
                </Columns>
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
            <div class="vungchonthem">
                <br />
                <asp:Button ID="btnThemNCC" CssClass="btnView1" runat="server" Text="THÊM NCC MỚI" OnClick="btnThemNCC_Click"/>
            </div>
            <div class="Ad_pro_wrap" id="VUNGNCC" runat="server">
                <div class="Ad_pro_container">
                    <p>Tên Nhà Cung Cấp</p>
                    <asp:TextBox ID="txttenncc" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" CssClass="kiemtra" ControlToValidate="txttenncc" runat="server" ErrorMessage="Tên nhà cung cấp không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>Địa Chỉ</p>
                    <asp:TextBox ID="txtdcncc" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" CssClass="kiemtra" ControlToValidate="txtdcncc" runat="server" ErrorMessage="Địa chỉ không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>Điện Thoại</p>
                    <asp:TextBox ID="txtdtncc" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" CssClass="kiemtra" ControlToValidate="txtdtncc" runat="server" ErrorMessage="Số điện thoại không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>&nbsp </p>
                    <asp:Button ID="btnThemNCC1" CssClass="btnView2" runat="server" Text="Thêm" OnClick="btnThemNCC1_Click" />
                    <asp:Button ID="btnHuyNCC" CssClass="btnView2" runat="server" Text="Hủy" CausesValidation="False" OnClick="btnHuyNCC_Click" />
                </div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" DeleteCommand="DELETE FROM [NHACUNGCAP] WHERE [MaNCC] = @original_MaNCC AND (([TenNCC] = @original_TenNCC) OR ([TenNCC] IS NULL AND @original_TenNCC IS NULL)) AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([SDT] = @original_SDT) OR ([SDT] IS NULL AND @original_SDT IS NULL))" InsertCommand="INSERT INTO [NHACUNGCAP] ([TenNCC], [DiaChi], [SDT]) VALUES (@TenNCC, @DiaChi, @SDT)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [NHACUNGCAP]" UpdateCommand="UPDATE [NHACUNGCAP] SET [TenNCC] = @TenNCC, [DiaChi] = @DiaChi, [SDT] = @SDT WHERE [MaNCC] = @original_MaNCC AND (([TenNCC] = @original_TenNCC) OR ([TenNCC] IS NULL AND @original_TenNCC IS NULL)) AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([SDT] = @original_SDT) OR ([SDT] IS NULL AND @original_SDT IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaNCC" Type="Int32" />
                    <asp:Parameter Name="original_TenNCC" Type="String" />
                    <asp:Parameter Name="original_DiaChi" Type="String" />
                    <asp:Parameter Name="original_SDT" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenNCC" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenNCC" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                    <asp:Parameter Name="original_MaNCC" Type="Int32" />
                    <asp:Parameter Name="original_TenNCC" Type="String" />
                    <asp:Parameter Name="original_DiaChi" Type="String" />
                    <asp:Parameter Name="original_SDT" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gvNCC" GridLines="None" PagerSettings-LastPageText=" &gt;&gt;" PagerSettings-FirstPageText=" &lt;&lt;" PagerSettings-NextPageText=" &gt;" PagerSettings-PreviousPageText=" &lt;" Width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MaNCC" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" OnRowCommand="gvNCC_RowCommand" OnRowUpdating="gvNCC_RowUpdating">

                <Columns>
                    <asp:BoundField DataField="MaNCC" HeaderText="Mã NCC" InsertVisible="False" ReadOnly="True" SortExpression="MaNCC" />
                    <asp:BoundField DataField="TenNCC" HeaderText="Tên NCC" SortExpression="TenNCC" />
                    <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
                    <asp:BoundField DataField="SDT" HeaderText="Điện Thoại" SortExpression="SDT" />
                    <asp:ButtonField CommandName="XoaNCC" Text="Xoá" />
                    <asp:CommandField CancelText="Huỷ" EditText="Sửa" ShowEditButton="True" UpdateText="Lưu" />
                </Columns>
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
        <asp:View ID="View4" runat="server">
            <div class="vungchonthem">
                <br />
                <asp:Button ID="btnThemPM" CssClass="btnView1" runat="server" Text="THÊM PHIẾU MƯỢN MỚI" OnClick="btnThemPM_Click"/>
            </div>
            <div class="Ad_pro_wrap" id="VUNGPHIEUMUON" runat="server">
                <div class="Ad_pro_container">
                    <p>Mã Độc Giả</p>
                    <asp:TextBox ID="txtmadg" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" CssClass="kiemtra" ControlToValidate="txtmadg" runat="server" ErrorMessage="Mã độc giả không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>Ngày Hẹn Trả</p>
                    <asp:TextBox ID="txtngayhentra" runat="server" TextMode="Date"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" CssClass="kiemtra" ControlToValidate="txtngayhentra" runat="server" ErrorMessage="Ngày hẹn trả không được bỏ trống"></asp:RequiredFieldValidator>
                    <script>
                      $(function() {
                        $( "#txtngayhentra" ).datepicker({dateFormat: "MM-dd-yyyy"});
                      });
                    </script>
                    <p>Mã Thủ Thư</p>
                    <asp:TextBox ID="txtmatt" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" CssClass="kiemtra" ControlToValidate="txtmatt" runat="server" ErrorMessage="Mã thủ thư không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>&nbsp </p>
                    <asp:Button ID="btnThemPM1" CssClass="btnView2" runat="server" Text="Thêm" OnClick="btnThemPM1_Click" />
                    <asp:Button ID="btnHuyPM" CssClass="btnView2" runat="server" Text="Hủy" CausesValidation="False" OnClick="btnHuyPM_Click" />
                </div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaPM], [NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan] FROM [PHIEUMUON]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [PHIEUMUON] WHERE [MaPM] = @original_MaPM AND (([NgayMuon] = @original_NgayMuon) OR ([NgayMuon] IS NULL AND @original_NgayMuon IS NULL)) AND (([NgayHenTra] = @original_NgayHenTra) OR ([NgayHenTra] IS NULL AND @original_NgayHenTra IS NULL)) AND (([MaDG] = @original_MaDG) OR ([MaDG] IS NULL AND @original_MaDG IS NULL)) AND (([MaTT] = @original_MaTT) OR ([MaTT] IS NULL AND @original_MaTT IS NULL)) AND (([TrangThai] = @original_TrangThai) OR ([TrangThai] IS NULL AND @original_TrangThai IS NULL)) AND (([NgayTra] = @original_NgayTra) OR ([NgayTra] IS NULL AND @original_NgayTra IS NULL)) AND (([GiaHan] = @original_GiaHan) OR ([GiaHan] IS NULL AND @original_GiaHan IS NULL))" InsertCommand="INSERT INTO [PHIEUMUON] ([NgayMuon], [NgayHenTra], [MaDG], [MaTT], [TrangThai], [NgayTra], [GiaHan]) VALUES (@NgayMuon, @NgayHenTra, @MaDG, @MaTT, @TrangThai, @NgayTra, @GiaHan)" UpdateCommand="UPDATE [PHIEUMUON] SET [NgayMuon] = @NgayMuon, [NgayHenTra] = @NgayHenTra, [MaDG] = @MaDG, [MaTT] = @MaTT, [TrangThai] = @TrangThai, [NgayTra] = @NgayTra, [GiaHan] = @GiaHan WHERE [MaPM] = @original_MaPM AND (([NgayMuon] = @original_NgayMuon) OR ([NgayMuon] IS NULL AND @original_NgayMuon IS NULL)) AND (([NgayHenTra] = @original_NgayHenTra) OR ([NgayHenTra] IS NULL AND @original_NgayHenTra IS NULL)) AND (([MaDG] = @original_MaDG) OR ([MaDG] IS NULL AND @original_MaDG IS NULL)) AND (([MaTT] = @original_MaTT) OR ([MaTT] IS NULL AND @original_MaTT IS NULL)) AND (([TrangThai] = @original_TrangThai) OR ([TrangThai] IS NULL AND @original_TrangThai IS NULL)) AND (([NgayTra] = @original_NgayTra) OR ([NgayTra] IS NULL AND @original_NgayTra IS NULL)) AND (([GiaHan] = @original_GiaHan) OR ([GiaHan] IS NULL AND @original_GiaHan IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaPM" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_NgayMuon" />
                    <asp:Parameter DbType="Date" Name="original_NgayHenTra" />
                    <asp:Parameter Name="original_MaDG" Type="Int32" />
                    <asp:Parameter Name="original_MaTT" Type="Int32" />
                    <asp:Parameter Name="original_TrangThai" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="original_NgayTra" />
                    <asp:Parameter Name="original_GiaHan" Type="Boolean" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="Date" Name="NgayMuon" />
                    <asp:Parameter DbType="Date" Name="NgayHenTra" />
                    <asp:Parameter Name="MaDG" Type="Int32" />
                    <asp:Parameter Name="MaTT" Type="Int32" />
                    <asp:Parameter Name="TrangThai" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="NgayTra" />
                    <asp:Parameter Name="GiaHan" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="NgayMuon" />
                    <asp:Parameter DbType="Date" Name="NgayHenTra" />
                    <asp:Parameter Name="MaDG" Type="Int32" />
                    <asp:Parameter Name="MaTT" Type="Int32" />
                    <asp:Parameter Name="TrangThai" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="NgayTra" />
                    <asp:Parameter Name="GiaHan" Type="Boolean" />
                    <asp:Parameter Name="original_MaPM" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_NgayMuon" />
                    <asp:Parameter DbType="Date" Name="original_NgayHenTra" />
                    <asp:Parameter Name="original_MaDG" Type="Int32" />
                    <asp:Parameter Name="original_MaTT" Type="Int32" />
                    <asp:Parameter Name="original_TrangThai" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="original_NgayTra" />
                    <asp:Parameter Name="original_GiaHan" Type="Boolean" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gvPM" GridLines="None" PagerSettings-LastPageText=" &gt;&gt;" PagerSettings-FirstPageText=" &lt;&lt;" PagerSettings-NextPageText=" &gt;" PagerSettings-PreviousPageText=" &lt;" Width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MaPM" DataSourceID="SqlDataSource4" OnRowCommand="gvPM_RowCommand" OnRowUpdating="gvPM_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="MaPM" HeaderText="Mã PM" InsertVisible="False" ReadOnly="True" SortExpression="MaPM" />
                    <asp:BoundField DataField="NgayMuon" HeaderText="Ngày Mượn" SortExpression="NgayMuon" />
                    <asp:BoundField DataField="NgayHenTra" HeaderText="Ngày Hẹn Trả" SortExpression="NgayHenTra" />
                    <asp:BoundField DataField="MaDG" HeaderText="Mã ĐG" SortExpression="MaDG" />
                    <asp:BoundField DataField="MaTT" HeaderText="Mã TT" SortExpression="MaTT" />
                    <asp:CheckBoxField DataField="TrangThai" HeaderText="Trạng Thái" SortExpression="TrangThai" />
                    <asp:BoundField DataField="NgayTra" HeaderText="Ngày Trả" SortExpression="NgayTra" />
                    <asp:CheckBoxField DataField="GiaHan" HeaderText="Gia Hạn" SortExpression="GiaHan" />
                    <asp:ButtonField CommandName="XoaPM" Text="Xoá" />
                    <asp:CommandField CancelText="Huỷ" EditText="Sửa" ShowEditButton="True" UpdateText="Lưu" />
                </Columns>
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
        <asp:View ID="View5" runat="server">
             <div class="vungchonthem">
                <br />
                <asp:Button ID="btnThemCTPM" CssClass="btnView1" runat="server" Text="THÊM CTPM MỚI" OnClick="btnThemCTPM_Click"/>
            </div>
            <div class="Ad_pro_wrap" id="VUNGCTPM" runat="server">
                <div class="Ad_pro_container">
                    <p>Mã Phiếu Mượn</p>
                    <asp:TextBox ID="txtmapm" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" CssClass="kiemtra" ControlToValidate="txtmapm" runat="server" ErrorMessage="Mã phiếu mượn không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>Mã Sách</p>
                    <asp:TextBox ID="txtmasach" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" CssClass="kiemtra" ControlToValidate="txtmasach" runat="server" ErrorMessage="Mã sách không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>Số Lượng</p>
                    <asp:TextBox ID="txtsoluong" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" CssClass="kiemtra" ControlToValidate="txtsoluong" runat="server" ErrorMessage="Số lượng không được bỏ trống"></asp:RequiredFieldValidator>
                    <p>&nbsp </p>
                    <asp:Button ID="btnThemCTPM1" CssClass="btnView2" runat="server" Text="Thêm" OnClick="btnThemCTPM1_Click" />
                    <asp:Button ID="btnHuyCTPM" CssClass="btnView2" runat="server" Text="Hủy" CausesValidation="False" OnClick="btnHuyCTPM_Click" />
                </div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CTPHIEUMUON]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [CTPHIEUMUON] WHERE [MaPM] = @original_MaPM AND [MaSach] = @original_MaSach AND (([SoLuong] = @original_SoLuong) OR ([SoLuong] IS NULL AND @original_SoLuong IS NULL))" InsertCommand="INSERT INTO [CTPHIEUMUON] ([MaPM], [MaSach], [SoLuong]) VALUES (@MaPM, @MaSach, @SoLuong)" UpdateCommand="UPDATE [CTPHIEUMUON] SET [SoLuong] = @SoLuong WHERE [MaPM] = @original_MaPM AND [MaSach] = @original_MaSach AND (([SoLuong] = @original_SoLuong) OR ([SoLuong] IS NULL AND @original_SoLuong IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaPM" Type="Int32" />
                    <asp:Parameter Name="original_MaSach" Type="Int32" />
                    <asp:Parameter Name="original_SoLuong" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaPM" Type="Int32" />
                    <asp:Parameter Name="MaSach" Type="Int32" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="original_MaPM" Type="Int32" />
                    <asp:Parameter Name="original_MaSach" Type="Int32" />
                    <asp:Parameter Name="original_SoLuong" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gvCTPM" GridLines="None" PagerSettings-LastPageText=" &gt;&gt;" PagerSettings-FirstPageText=" &lt;&lt;" PagerSettings-NextPageText=" &gt;" PagerSettings-PreviousPageText=" &lt;" Width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MaPM,MaSach" DataSourceID="SqlDataSource5" OnRowCommand="gvCTPM_RowCommand" OnRowUpdating="gvCTPM_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="MaPM" HeaderText="Mã PM" ReadOnly="True" SortExpression="MaPM" />
                    <asp:BoundField DataField="MaSach" HeaderText="Mã Sách" SortExpression="MaSach" ReadOnly="True" />
                    <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
                    <asp:ButtonField CommandName="XoaCTPM" Text="Xoá" />
                    <asp:CommandField CancelText="Huỷ" EditText="Sửa" ShowEditButton="True" UpdateText="Lưu" />
                </Columns>
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
        <asp:View ID="View6" runat="server">
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DoAn_LTW %>" SelectCommand="SELECT * FROM [GOPY]"></asp:SqlDataSource>
            <asp:GridView CssClass="gvgopy" GridLines="None" PagerSettings-LastPageText=" &gt;&gt;" PagerSettings-FirstPageText=" &lt;&lt;" PagerSettings-NextPageText=" &gt;" PagerSettings-PreviousPageText=" &lt;" Width="100%" ID="GridView1" runat="server" DataSourceID="SqlDataSource6" AutoGenerateColumns="False" DataKeyNames="ID">
                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="HoTen" HeaderText="Họ và Tên" SortExpression="HoTen" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="NoiDung" HeaderText="Nội Dung" SortExpression="NoiDung" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#6699FF" Font-Bold="True" ForeColor="White" />
                <PagerSettings Position="TopAndBottom" />
                <PagerStyle BackColor="#6699FF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#6699FF" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        </asp:View>
        
    </asp:MultiView>
        </div>
</asp:Content>
