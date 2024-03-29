﻿<%@ Page Title="Log In" Language="vb" MasterPageFile="~/Flex.Master" AutoEventWireup="false"
    CodeBehind="Login.aspx.vb" Inherits="FlexTimeTable.Login" %>

<%@ Register Src="userControl/ldap.ascx" TagName="ldap" TagPrefix="uc1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Log In
    </h2>
    <p>
        Please enter your username and password.
    </p>
    <div>
        <span class="failureNotification">
            <asp:Literal ID="FailureText" runat="server"></asp:Literal>
        </span>
        <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification"
            ValidationGroup="LoginUserValidationGroup" />
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
        <div class="accountInfo">
            <fieldset class="login">
                <legend>Account Information</legend>
                <p>
                    <asp:CheckBox ID="chkAdmin" runat="server" AutoPostBack="true" Text="Administrator"
                        TextAlign="Left" /></p>
                <p>
                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                    <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                        CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required."
                        ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                    <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                        CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                        ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:CheckBox ID="RememberMe" runat="server" Text="Keep me logged in" />
                </p>
            </fieldset>
            <p class="submitButton">
                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="LoginUserValidationGroup" />
            </p>
            <uc1:ldap ID="ldap1" runat="server" />
        </div>
    </div>
</asp:Content>
