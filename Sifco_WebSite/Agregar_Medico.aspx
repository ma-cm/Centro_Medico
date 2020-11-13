<%@ Page Title="Medico" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Agregar_Medico.aspx.cs" Inherits="Agregar_Medico" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Agregar nuevo Medico</h1>
    </div>
    <div class="row">
        <div class="col-md-5">
            <div class="form-group">
                <label for="inputpc">Nombre Medico</label>
                <asp:TextBox class="form-control" id="tx_nombre" placeholder="Nombre Completo" runat="server"/>
                <label for="inputpc">Numero Colegiado</label>
                <asp:TextBox class="form-control" id="tx_colegiado" placeholder="No Colegiado" runat="server"/>
                <label for="inputpc">Fecha de Nacimiento</label>
                <asp:TextBox class="form-control" id="tx_nacimiento" placeholder="Fecha naciemiento MM-DD-YYY" runat="server"/>                
                <label for="inputpc">Sexo</label>
                <asp:DropDownList class="form-control" ID="tx_sexo" runat="server">
                    <asp:ListItem Text="Mujer" Value="m" />
                    <asp:ListItem Text="Hombre" Value="h" />
                </asp:DropDownList>  
                <label for="inputpc">Especialidad</label>
                <asp:TextBox class="form-control" id="tx_especialidad" placeholder="Especialidad" runat="server"/>                
                
             </div>

            <asp:Button id="Button1" class="btn btn-default" Text="Submit" OnClick="AgregarMedico"  runat="server"/>

        </div>
        <div class="col-md-5">
            <asp:GridView ID="gvMedicos" runat="server" AutoGenerateColumns="true" >

            </asp:GridView>
        </div>
    </div>
</asp:Content>
