<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayRoll.Master" AutoEventWireup="true" CodeBehind="PayRollForm.aspx.cs" Inherits="EmployeePayrollForm.WebForms.PayRollForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../styleSheets/PayRollForm.css" rel="stylesheet" />
     <style type="text/css">
         .abd {}
         .abc {}
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           
            
    <div class="sec1">
    <div class="Header">
    <h2> Employee Payroll Form </h2>
     </div>
         
     <br />
     <div>
            <asp:Label ID="Label3" runat="server" Text="NAME"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="428px" height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </div>
        <br />
      <div>
            <asp:Label ID="Label1" runat="server" Text="Profile image"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Width="417px" RepeatLayout="Flow" Height="56px" CellPadding="1" CellSpacing="1" CssClass="abc">
                <asp:ListItem Value="../Assets/ProfileImages/Ellipse -1.png"><img src="../Assets/ProfileImages/Ellipse -1.png" alt="img1" /></asp:ListItem>
                <asp:ListItem Value="../Assets/ProfileImages/Ellipse -2.png"><img src="../Assets/ProfileImages/Ellipse -2.png" alt="img2" /></asp:ListItem>
                <asp:ListItem Value="../Assets/ProfileImages/Ellipse -3.png"><img src="../Assets/ProfileImages/Ellipse -3.png" alt="img3" /></asp:ListItem>
                <asp:ListItem Value="../Assets/ProfileImages/Ellipse -4.png"><img src="../Assets/ProfileImages/Ellipse -4.png" alt="img4" /></asp:ListItem>
                <asp:ListItem Value="../Assets/ProfileImages/Ellipse -5.png"><img src="../Assets/ProfileImages/Ellipse -5.png" alt="img5" /></asp:ListItem>
                
    
    </asp:RadioButtonList>
          </div>
        <br />
    <div>
            <asp:Label ID="Label2" runat="server" Text="GENDER"></asp:Label>
          <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" Width="450px" RepeatLayout="Flow" CssClass="cba">
            <asp:ListItem Text=" Male" Value="Male"></asp:ListItem>
            <asp:ListItem Text=" Female" Value="Female"></asp:ListItem>
    </asp:RadioButtonList>  
        </div>  
        <br /> 
        <div>
            <asp:Label ID="Label4" runat="server" Text="DEPARTMENT"></asp:Label>;
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" Width="415px" RepeatLayout="Flow" CssClass="abd" Height="28px">
                <asp:ListItem Text="&ensp;HR&emsp;" Value="HR"> </asp:ListItem>
                <asp:ListItem Text="&ensp;Sales&emsp;" Value="Sales"></asp:ListItem>
                <asp:ListItem Text="&ensp;Finance&emsp;" Value="Finance"></asp:ListItem>
                <asp:ListItem Text="&ensp;Engineer&emsp;" Value="Engineer"></asp:ListItem>
                <asp:ListItem  Text="&ensp;Others&emsp;" Value="Others"></asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <br />
      <div>
            <label>SALARY</label>
          <asp:DropDownList ID="DropDownList1" runat="server" Width="439px" Height="32px">
              <asp:ListItem Text="Select Salary" Value="0"></asp:ListItem>
                <asp:ListItem Text="0-2.5Lac" Value="250000"></asp:ListItem>
                <asp:ListItem Text="2.5-5.0Lac" Value="500000"></asp:ListItem>
                <asp:ListItem Text="5.0-10.0Lac" Value="1000000"></asp:ListItem>
                <asp:ListItem Text="10.0Lac &Above" Value="1500000"></asp:ListItem>
              </asp:DropDownList>
        </div>
        <br />
     <div>
            <label>START_DATE</label>
         <asp:DropDownList ID="ddlDay" runat="server" Height="30px" Width="130px"></asp:DropDownList>
         <asp:DropDownList ID="ddlMonth" runat="server" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" Height="27px" Width="130px"></asp:DropDownList>
         <asp:DropDownList ID="ddlYear" runat="server" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged" Height="23px" Width="143px"></asp:DropDownList>
           </div>
    
        <br />
    <div >
            <label>NOTES</label>
        <asp:TextBox ID="TextBox1" runat="server" Width="423px" Height="32px"></asp:TextBox>
         </div>
        <br />
    <div>  
        <asp:Button ID="Button1" runat="server" Text="Cancel" Width="150px" Height="40px"/>
        <asp:Button ID="Button2" runat="server" Text="Submit"  Width="157px" Height="41px" OnClick="Button2_Click"   />
        <asp:Button ID="Button3" runat="server" Text="Reset" Width="188px" Height="40px" OnClick="Button3_Click"/>
    </div>
         <div>
            <asp:Label ID="Label8" runat="server"></asp:Label>
        </div>
        </div>




</asp:Content>
