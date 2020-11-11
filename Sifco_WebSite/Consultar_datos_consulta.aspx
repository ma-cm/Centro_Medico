<%@ Page Title="Consulta" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Consultar_datos_consulta.aspx.cs" Inherits="Consultar_datos_consulta" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">

    </div>
    <div class="row">
        <div class="col-md-5">
            <div class="form-group">
                <label for="exampleInputEmail1">Codigo Paciente</label>
                <input type="text" class="form-control" id="tx_codigo" aria-describedby="emailHelp" placeholder="Ingrese codigo">
                <small id="emailHelp" class="form-text text-muted">Ingrese unicamente el codigo de paciente.</small>
                
             </div>

            <a class="btn btn-default" onclick="ConsultarPaciente">Consultar &raquo;</a>
            <button type="button" class="btn btn-primary" onclick="ConsultarPaciente">Submit</button>
        </div>
        <div class="col-md-5">
            <asp:GridView ID="gvConsultas" runat="server" AutoGenerateColumns="true" >

            </asp:GridView>
        </div>
    </div>


    
</asp:Content>
