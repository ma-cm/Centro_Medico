<%@ Page Title="Medico" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Agregar_Medico.aspx.cs" Inherits="Agregar_Medico" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Agregar nuevo Medico</h1>
    </div>
    <div class="row">
        <div class="col-md-5">
            <div class="form-group">
                <label for="inputpc">Nombre Medico</label>
                <input type="text" class="form-control" id="tx_nombre" placeholder="Nombre Completo">
                <label for="inputpc">Numero Colegiado</label>
                <input type="text" class="form-control" id="tx_dpi" placeholder="Colegiado">
                <label for="inputpc">Fecha de Nacimiento</label>
                <input type="text" class="form-control" id="tx_nacimiento" placeholder="Fecha naciemiento MM-DD-YYYY">
                <label for="inputpc">Sexo</label>
                <input type="text" class="form-control" id="tx_sexo" placeholder="Sexo">
                <label for="inputpc">Especialidad</label>
                <input type="text" class="form-control" id="tx_especialidad" placeholder="Sexo">
                
             </div>

            <a class="btn btn-default" onclick="ConsultarPaciente">Agregar &raquo;</a>

        </div>
        <div class="col-md-5">
            <asp:GridView ID="gvMedicos" runat="server" AutoGenerateColumns="true" >

            </asp:GridView>
        </div>
    </div>
</asp:Content>