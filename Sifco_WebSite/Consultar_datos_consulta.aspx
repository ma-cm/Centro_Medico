﻿<%@ Page Title="Consulta" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Consultar_datos_consulta.aspx.cs" Inherits="Consultar_datos_consulta" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Consultar datos de Paciente</h1>
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

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" >
                

            </asp:GridView>
        </div>
    </div>


    
</asp:Content>
