<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayRoll.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EmployeePayrollForm.WebForms.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styleSheets/SignUp.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="sec1">
    <div class="sec2">
        <h5 style="width: 302px; height: 28px">Create an account</h5>
    </div>
    <div class="sec3">
       
        <p style="margin-bottom: 19px; width: 229px; margin-left: 0px;"> to continue to Employee Payroll </p>
    </div>
     <div>
         <asp:TextBox ID="TextBox2" type="text" placeholder="First name" name="firstname" runat="server" required="required" ToolTip="Please Enter First Name" OnTextChanged="TextBox2_TextChanged" Height="25px" style="margin-top: 11px" Width="139px"></asp:TextBox>
       <asp:TextBox ID="TextBox3" type="text" placeholder="Last name" name="lastname" runat="server" required="required" ToolTip="Please Enter Last Name" Height="25px" style="margin-top: 11px" Width="139px"></asp:TextBox>        
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct First name" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="[A-Z]{1}[a-z]{2,}"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter correct Last name" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[A-Z]{1}[a-z]{2,}"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:TextBox ID="TextBox1" placeholder="Enter Email" type="text" name="username" runat="server" Width="286px" required="required" ToolTip="Please Enter Email" Height="33px" OnTextChanged="TextBox1_TextChanged" style="margin-left: 0px; margin-top: 7px; margin-bottom: 14px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter correct Email" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[a-z0-9]+(.[a-z0-9]+)?@[a-z]+[.][a-z]{3}"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:TextBox ID="TextBox6" placeholder="Enter Mobile Number" type="text" name="Phone" runat="server" Width="285px" required="required" ToolTip="Please Enter Mobile Number" Height="33px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter correct Mobile Number" ControlToValidate="TextBox6" ForeColor="Red" ValidationExpression="[6-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:TextBox ID="TextBox4" type="password" placeholder="Enter Password" name="Password" runat="server" required="required" ToolTip="Please Enter Strong Password" Height="25px" style="margin-top: 11px" Width="139px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" type="password" placeholder="Confirm Password" name="Password" runat="server" required="required" ToolTip="Please Re-type The Password To Confirm" Height="25px" Width="139px" style="margin-top: 0px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Strong Password" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter Strong Password" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords should be Same" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ForeColor="Red"></asp:CompareValidator>
    </div>
    <div>
        <asp:CheckBox ID="CheckBox1" OnCheckedChanged="CheckBox1_CheckedChanged" type="checkbox" Text="Show Password" runat="server" />
    </div>
        <asp:LinkButton ID="LinkButton1" CssClass="lbtn" style="text-decoration:none" OnClick="LinkButton1_Click" runat="server" EnableTheming="True">Sign in instead</asp:LinkButton>
       
        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Sign Up" OnClick="Button1_Click"  Width="154px" Height="29px" style="margin-left: 38px; margin-top: 8px;"/>
    <br />
    <div>
    </div>
    <div>
       <asp:Label ID="Label1" class="labelError" ForeColor="Red" runat="server"></asp:Label>
    </div>
    </div>
   
   
</asp:Content>
