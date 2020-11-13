<%@ Page Title="Editar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Editar_Consulta.aspx.cs" Inherits="Editar_Consulta" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Editar datos de Paciente</h1>
    </div>
    <div class="row">
        <div class="col-md-5">
            <div class="form-group">
                <label for="exampleInputEmail1">Codigo Paciente</label>
                <asp:TextBox class="form-control" id="tx_codigo" placeholder="Ingrese codigo" aria-describedby="emailHelp" runat="server"/>                
                <small id="emailHelp" class="form-text text-muted">Ingrese unicamente el codigo de paciente.</small>                
             </div>
             <asp:Button id="Button1" class="btn btn-default" Text="Submit" OnClick="ConsultarPaciente"  runat="server"/>
        </div>
        <div class="col-md-5">
           <label for="inputpc">Nombre Paciente</label>
           <asp:TextBox class="form-control" id="tx_paciente" placeholder="" ReadOnly="True" runat="server"/>
           <label for="inputpc">Nombre Medico</label>
           <asp:TextBox class="form-control" id="tx_medico" placeholder="" ReadOnly="True" runat="server"/>
           <label for="inputpc">Fecha de consulta</label>
           <asp:TextBox class="form-control" id="tx_fecha" placeholder="" ReadOnly="True" runat="server"/>
           <label for="inputpc">Hora de Consulta </label>
           <asp:TextBox class="form-control" id="tx_hora" placeholder="" ReadOnly="True" runat="server"/>
            <label for="inputpc">Estado de consulta</label>
           <asp:TextBox class="form-control" id="tx_estado" placeholder="" ReadOnly="True" runat="server"/>
            <div>
                <asp:Button id="Button2" class="btn btn-default" Text="Editar" OnClick="ConsultarPaciente"  runat="server"/>
            </div>
        </div>
    </div>


    
</asp:Content>
