<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployer.aspx.cs" Inherits="EmployeesForms.AddEmployer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add new Employer</h2>
    <p>
        <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
        <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
        <asp:TextBox ID="SalaryTextBox" runat="server"></asp:TextBox>
        <asp:DropDownList ID="JobDropDownList" runat="server" DataSourceID="JobsDataSource" DataTextField="Job_nm" DataValueField="Job_id"></asp:DropDownList>
        <asp:EntityDataSource runat="server" ID="JobsDataSource" DefaultContainerName="EmployeesDBEntities" ConnectionString="name=EmployeesDBEntities" EnableFlattening="False" EntitySetName="Jobs"></asp:EntityDataSource>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
    </p>   
</asp:Content>
