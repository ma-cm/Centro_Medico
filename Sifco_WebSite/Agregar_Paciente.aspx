<%@ Page Title="Paciente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Agregar_Paciente.aspx.cs" Inherits="Agregar_Paciente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Agregar nuevo Paciente</h1>
    </div>
    <div class="row">
        <div class="col-md-5">
            <div class="form-group">
                <label for="inputpc">Nombre Paciente</label>
                <asp:TextBox class="form-control" id="tx_nombre" placeholder="Nombre Completo" runat="server"/>
                <label for="inputpc">DPI</label>
                <asp:TextBox class="form-control" id="tx_dpi" placeholder="DPI" runat="server"/>
                <label for="inputpc">Fecha de Nacimiento</label>
                <asp:TextBox class="form-control" id="tx_nacimiento" placeholder="Fecha naciemiento MM-DD-YYYY" runat="server"/>
                <label for="inputpc">Sexo</label>
                <asp:DropDownList class="form-control" ID="tx_sexo" runat="server">
                    <asp:ListItem Text="Mujer" Value="m" />
                    <asp:ListItem Text="Hombre" Value="h" />
                </asp:DropDownList>                                                
             </div>

            <asp:Button id="Button1" class="btn btn-default" Text="Submit" OnClick="AgregarPaciente"  runat="server"/>

        </div>
        <div class="col-md-5">
            <asp:GridView ID="gvPacientes" runat="server" AutoGenerateColumns="true" >

            </asp:GridView>
        </div>
    </div>
</asp:Content>

