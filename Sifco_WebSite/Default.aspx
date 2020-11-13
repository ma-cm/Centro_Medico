<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="font-family: verdana, Geneva, Tahoma, sans-serif">Centro Medico </h1>
        <p class="lead" style="font-family: Verdana, Geneva, Tahoma, sans-serif">Medicos especializados dispuestos a trabajar comprometidos con tu salud.</p>        
    </div>

    <div class="row">
        <div class="col-md-5">
            <h2>Listado de Medicos </h2>
            <asp:GridView ID="gvdMedicos" runat="server" AutoGenerateColumns ="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gvdMedicos_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Medico" HeaderText="Medico" SortExpression="Medico" />
                    <asp:BoundField DataField="No. Colegiado" HeaderText="No. Colegiado" SortExpression="No. Colegiado" />
                    <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" SortExpression="Especialidad" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#0C6090" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sifco_dbConnectionString %>" SelectCommand="SelectMedicos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
        <div class="col-md-5">
            <h2>¿Desea Agendar una cita?</h2>
            <p>
                <a class="btn btn-default" href="Agendar_cita.aspx">Crear Consulta &raquo;</a>
            </p>

             <h2>¿Deseas revisar sus datos de consulta?</h2>
            <p>
                <a class="btn btn-default" href="Consultar_datos_consulta.aspx">Buscar Consulta &raquo;</a>
            </p>
            <h2>¿Deseas registrar un nuevo medico?</h2>
            <p>
                <a class="btn btn-default" href="Agregar_Medico.aspx">Registrar &raquo;</a>
            </p>
            <h2>¿Deseas registrar un nuevo paciente?</h2>
            <p>
                <a class="btn btn-default" href="Agregar_Paciente.aspx">Registrar &raquo;</a>
            </p>
        </div>
        
    </div>
</asp:Content>
