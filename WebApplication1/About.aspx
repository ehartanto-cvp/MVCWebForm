<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Web Form About Page</h3>
    <p>Sample DropDownList using Entity Data Source:</p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QSPrototypeEntities" DefaultContainerName="QSPrototypeEntities" EnableFlattening="False" EntitySetName="FUNDINGPROGRAMs">
        </asp:EntityDataSource>
    </p>
<p>
        Sample DropDownList using SqlDataSource:</p>
    <p>
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QSPrototypeConnectionString %>" SelectCommand="SELECT [Id], [Name] FROM [FUNDINGPROGRAM]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    </p>
    <p>
        Sample DropDownList using ViewModel:</p>
    <p>
        <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True" DataTextField="Description" DataValueField="Id" SelectMethod="BindPrograms">
        </asp:DropDownList>
    </p>

</asp:Content>
