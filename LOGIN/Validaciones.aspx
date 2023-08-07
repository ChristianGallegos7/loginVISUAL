<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Validaciones.aspx.cs" Inherits="LOGIN.Validaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_cabecera" runat="server">
    <script type="text/javascript" lang="ja">
        function no_letras(e) {
            var tecla = document.all ? tecla = e.keyCode : tecla = e.which;
            if (tecla > 47 && tecla < 58 || tecla == 46 || tecla < 164 || tecla < 165) {
                alert("Solo se permiten numeros");
                return false
            } else {
                return true
            }
        }

        function no_numeros(e) {
            var tecla = document.all ? tecla = e.keyCode : tecla = e.which;

            if (tecla > 64 && tecla < 91 || tecla > 96 && tecla < 123) {
                alert("Solo se permiten letras");
                return false
            } else {
                return true
            }
        }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <table class="table table-striped">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style2 text-center">VALIDACION EN C#</td>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Solo numeros</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txt_solonumeros" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_solonumeros" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style3">fdsfdsfdsfsdfdsfsdfdsfsdsd</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Solo letras</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txt_sololetra" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Cedula</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Repetir Contraseña</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Correo</td>
                        <td class="auto-style5"></td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style5"></td>
                        <td class="auto-style6"></td>
                        <td class="auto-style7"></td>
                    </tr>

                    <tr>
                        <td>Edad</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Fecha</td>

                        <td></td>
                        <td>
                            <input id="Text1" type="text" />
                        </td>
                        <td>
                            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                        </td>
                        <td></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Verificar fecha" />
                        </td>
                    </tr>
                    <tr>
                        <td>Campo obligatorio</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">vchgvhgfhfghgfhgfhfghgfhf<br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Escoger</td>
                        <td class="auto-style8"></td>
                        <td class="auto-style8">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style8"></td>
                        <td class="auto-style9"></td>
                        <td class="auto-style10"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:Button ID="Button3" runat="server" Text="Validar Informacion" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>

                </table>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
