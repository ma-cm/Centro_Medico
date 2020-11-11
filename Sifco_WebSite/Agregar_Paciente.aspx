<%@ Page Title="Paciente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Agregar_Paciente.aspx.cs" Inherits="Agregar_Paciente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Agregar nuevo Paciente</h1>
    </div>
    <div class="row">
        <div class="col-md-5">
            <div class="form-group">
                <label for="inputpc">Nombre Paciente</label>
                <input type="text" class="form-control" id="tx_nombre" placeholder="Nombre Completo">
                <label for="inputpc">DPI</label>
                <input type="text" class="form-control" id="tx_dpi" placeholder="DPI">
                <label for="inputpc">Fecha de Nacimiento</label>
                <input type="text" class="form-control" id="tx_nacimiento" placeholder="Fecha naciemiento MM-DD-YYYY">
                <label for="inputpc">Sexo</label>
                <input type="text" class="form-control" id="tx_sexo" placeholder="Sexo">
                
             </div>

            <a class="btn btn-default" onclick="AgregarPaciente">Agregar &raquo;</a>

        </div>
        <div class="col-md-5">
            <asp:GridView ID="gvPacientes" runat="server" AutoGenerateColumns="true" >

            </asp:GridView>
        </div>
    </div>
</asp:Content>

