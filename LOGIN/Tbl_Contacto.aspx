<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Tbl_Contacto.aspx.cs" Inherits="LOGIN.Tbl_Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_cabecera" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 630px;
        }

        .auto-style3 {
            background-color: #FF0000;
        }

        .auto-style4 {
            background-color: #00FF00;
        }

        .auto-style5 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:HiddenField ID="HiddenField1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="table w-95 table-bordered table-info">
                <tr>
                    <td>
                        <table class="table w-50 mx-auto" style="height: 367px">
                            <tr>
                                <td colspan="2">
                                    <h3 class="text-center text-primary font-weight-bold">CRUD TABLA CONTACTO</h3>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Nombre:</td>
                                <td>
                                    <asp:TextBox ID="txt_nom" runat="server" class="form-control" oninvalid="this.classList.add('is-invalid')"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Dirección:</td>
                                <td>
                                    <asp:TextBox ID="txt_dir" runat="server" class="form-control" oninvalid="this.classList.add('is-invalid')"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Teléfono:</td>
                                <td>
                                    <asp:TextBox ID="txt_tel" runat="server" class="form-control" oninvalid="this.classList.add('is-invalid')"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Fecha Nacimiento:</td>
                                <td>
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                        <DayStyle BackColor="#CCCCCC" />
                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                                    </asp:Calendar>
                                </td>
                            </tr>

                            <tr class="w-100">
                                <td colspan="2" align="center">
                                    <asp:Button ID="btn_guarda" runat="server" Text="Agregar" class="mx-2 btn btn-success btn-lg" OnClick="btn_guarda_Click" />
                                    <asp:Button ID="btn_edita" runat="server" Text="Editar" class="mx-2 btn btn-primary btn-lg" OnClick="btn_edita_Click" />
                                    <asp:Button ID="btn_elimina" runat="server" Text="Eliminar" class="mx-2 btn btn-danger btn-lg" OnClick="btn_elimina_Click" />
                                </td>

                            </tr>

                            <tr class="w-100">
                                <td class="auto-style5" align="center">
                                    <asp:Label ID="lbl_error" runat="server" Text="" CssClass="auto-style3"></asp:Label>
                                    <asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="auto-style4"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <asp:GridView ID="grv_contacto" runat="server" class="table table-bordered table-responsive text-center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="con_id" HeaderText="Codigo" />
                                <asp:BoundField DataField="con_nombre" HeaderText="Nombre" />
                                <asp:BoundField DataField="con_direccion" HeaderText="Direccion" />
                                <asp:BoundField DataField="con_telefono" HeaderText="Telefono" />
                                <asp:BoundField DataField="con_fechaN" HeaderText="Fecha" />
                                <asp:TemplateField HeaderText="Accion">
                                    <ItemTemplate>
                                        <asp:Button runat="server" CssClass="btn btn-info" Text="Seleccione" ID="btn_seleccione" OnClick="btn_seleccione_Click" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>

        </ContentTemplate>

    </asp:UpdatePanel>


    <script>
        window.addEventListener('DOMContentLoaded', () => {
            const textboxes = document.querySelectorAll('.form-control');
            textboxes.forEach(textbox => {
                textbox.addEventListener('blur', () => {
                    if (textbox.value.trim() === '') {
                        textbox.classList.add('is-invalid');
                    } else {
                        textbox.classList.remove('is-invalid');
                    }
                });
            });
        });
    </script>
</asp:Content>
