<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployer.aspx.cs" Inherits="EmployeesForms.AddEmployer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add new Employer</h2>
    
    <p>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    First name:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                         ID="FirstNameRequiredFieldValidator" runat="server" ErrorMessage="First name is required"
                        ControlToValidate="FirstNameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="FirstNameRegularExpressionValidator" ControlToValidate="FirstNameTextBox" runat="server"
                        ValidationExpression="^[\s\S]{0,50}$" Text="50 characters max" ForeColor="Red" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Last name:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                         ID="LastNameRequiredFieldValidator" runat="server" ErrorMessage="Last name is required"
                        ControlToValidate="LastNameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="LastNameRegexFieldValidator" ControlToValidate="LastNameTextBox" runat="server"
                        ValidationExpression="^[\s\S]{0,50}$" Text="50 characters max" ForeColor="Red" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Salary:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="SalaryTextBox" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                         ID="SalaryRequiredFieldValidator" runat="server" ErrorMessage="Salary is required"
                        ControlToValidate="SalaryTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="SalaryRangeValidator" runat="server"
                        ErrorMessage="Salary is fractional value from 50 to 500" ForeColor="Red"
                        ControlToValidate="SalaryTextBox" MinimumValue="50" MaximumValue="500" Type="Double"></asp:RangeValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Job:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="JobDropDownList" runat="server"
                        DataSourceID="JobsDataSource" DataTextField="Job_nm" DataValueField="Job_id"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <p><a runat="server" href="~/" class="btn btn-primary btn-lg">To all employees...</a></p>
        <asp:EntityDataSource runat="server" ID="JobsDataSource" DefaultContainerName="JobsEmployeesEntities" ConnectionString="name=JobsEmployeesEntities" EnableFlattening="False" EntitySetName="Jobs"></asp:EntityDataSource>
        
    </p>   
</asp:Content>
