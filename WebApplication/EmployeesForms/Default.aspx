<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeesForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Employees</h1>
        <asp:DropDownList ID="JobsDropDownList" runat="server" DataSourceID="JobsDataSource"
            DataTextField="Job_nm" DataValueField="Job_id" AutoPostBack="True"></asp:DropDownList>
        <asp:EntityDataSource ID="JobsDataSource" runat="server" 
            ContextTypeName="EmployeesForms.EmployeesDBEntities" EnableFlattening="False"
             EntitySetName="Jobs" OnContextCreating="JobsDataSource_ContextCreating">
        </asp:EntityDataSource>
        <p >
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Emp_id" DataSourceID="EmployeesDataSource">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:TemplateField HeaderText="First_name" SortExpression="First_name">
                        <EditItemTemplate>
                            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("First_name") %>'></asp:TextBox>
                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("Last_name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("First_name") %>'></asp:Label>
                            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("First_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                </Columns>
            </asp:GridView>
        </p>
        <asp:EntityDataSource ID="EmployeesDataSource" runat="server" ConnectionString="name=EmployeesDBEntities" DefaultContainerName="EmployeesDBEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="Employees" AutoGenerateWhereClause="True" EntityTypeFilter="" Select="" Where="">
            <WhereParameters>
                <asp:ControlParameter ControlID="JobsDropDownList" Name="Job_id" PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:EntityDataSource>
        <p><a runat="server" href="~/AddEmployer" class="btn btn-primary btn-lg">New employee...</a></p>
    </div>

    

</asp:Content>
