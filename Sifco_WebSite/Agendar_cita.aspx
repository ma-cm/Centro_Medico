<%@ Page Title="Agendar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Agendar_cita.aspx.cs" Inherits="Agendar_cita" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Agendar Cita</h1>
    </div>
    <div class="row">
        <div class="col-md-5">

        </div>
        <div class="col-md-5">
            <asp:GridView ID="gvConsultas" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" >
                <Columns>
                    <asp:BoundField DataField="Paciente" HeaderText="Paciente" SortExpression="Paciente" />
                    <asp:BoundField DataField="Medico" HeaderText="Medico" SortExpression="Medico" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    <asp:BoundField DataField="Hora" HeaderText="Hora" ReadOnly="True" SortExpression="Hora" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sifco_dbConnectionString %>" SelectCommand="SelectConsultas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
    </div>


    
</asp:Content>
