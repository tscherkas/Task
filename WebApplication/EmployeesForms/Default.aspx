<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeesForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Employees</h1>
        <asp:DropDownList ID="JobsDropDownList" runat="server" DataSourceID="JobsDataSource"
            DataTextField="Job_nm" DataValueField="Job_id" AutoPostBack="True"></asp:DropDownList>
        <asp:EntityDataSource ID="JobsDataSource" runat="server" 
            ContextTypeName="EmployeesForms.JobsEmployeesEntities" EnableFlattening="False"
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
                            <asp:RequiredFieldValidator
                                 ID="FirstNameRequiredFieldValidator" runat="server" ErrorMessage="First name is required"
                                ControlToValidate="FirstNameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="FirstNameRegularExpressionValidator" ControlToValidate="FirstNameTextBox" runat="server"
                                ValidationExpression="^[\s\S]{0,50}$" Text="50 characters max" ForeColor="Red" />
                            <asp:RequiredFieldValidator
                                 ID="LastNameRequiredFieldValidator" runat="server" ErrorMessage="Last name is required"
                                ControlToValidate="LastNameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="LastNameRegexFieldValidator" ControlToValidate="LastNameTextBox" runat="server"
                                ValidationExpression="^[\s\S]{0,50}$" Text="50 characters max" ForeColor="Red" />
                            
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("First_name") %>'></asp:Label>
                            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("Last_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salary" SortExpression="Salary">
                        <EditItemTemplate>
                            <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator
                                 ID="SalaryRequiredFieldValidator" runat="server" ErrorMessage="Salary is required"
                                ControlToValidate="SalaryTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="SalaryRangeValidator" runat="server"
                                ErrorMessage="Salary is fractional value from 50 to 500" ForeColor="Red"
                                ControlToValidate="SalaryTextBox" MinimumValue="50" MaximumValue="500" Type="Double"></asp:RangeValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Salary") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </p>
        <asp:EntityDataSource ID="EmployeesDataSource" runat="server" ConnectionString="name=JobsEmployeesEntities" DefaultContainerName="JobsEmployeesEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="Employees" AutoGenerateWhereClause="True" EntityTypeFilter="" Select="" Where="">
            <WhereParameters>
                <asp:ControlParameter ControlID="JobsDropDownList" Name="Job_id" PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:EntityDataSource>
        <p><a runat="server" href="~/AddEmployer" class="btn btn-primary btn-lg">New employer...</a></p>
    </div>

    

</asp:Content>
