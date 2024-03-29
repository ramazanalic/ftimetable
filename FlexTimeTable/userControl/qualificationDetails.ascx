﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="qualificationDetails.ascx.vb"
    Inherits="FlexTimeTable.qualificationDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="getDepartment.ascx" TagName="getDepartment" TagPrefix="uc1" %><%@ Register Src="logButton.ascx" TagName="logButton" TagPrefix="uc2" %>
<asp:Literal ID="errorMessage" runat="server"></asp:Literal>
<asp:Panel ID="pnlDetails" runat="server">
    <asp:PlaceHolder ID="phLevel" runat="server">
        <b><asp:Literal ID="litLevel" runat="server" Text="Level:"></asp:Literal></b>
        <asp:DropDownList ID="cboLevel"  AutoPostBack="true" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
        </asp:DropDownList>
    </asp:PlaceHolder>
    <uc2:logButton ID="logSave" runat="server" />
    <asp:Button ID="btnRefresh" runat="server" Text="Refresh" />

    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
        <asp:TabPanel runat="server" HeaderText="Core Subjects" ID="TabCore">
            <HeaderTemplate>
                Core Subjects
            </HeaderTemplate>
            <ContentTemplate>
                <div style="border: 2px">
                    <table>
                        <tr>
                            <td valign="top">
                                <asp:TextBox ID="txtCoreSearch" runat="server"></asp:TextBox>
                                <asp:Button ID="btnCoreSearch" runat="server" ToolTip="Search for subjects" Text="Find" /><br />
                                <div id='Div1' style="z-index: 102; left: 13px; overflow: auto; width: 400px; height: 300px">
                                    <asp:ListBox ID="lstCoreSubjects" runat="server" Font-Size="Smaller" Width="700px"
                                        Height="600px"></asp:ListBox>
                                </div>
                            </td>
                            <td align="center" valign="middle" style="width: 120">
                                <asp:Button ID="btnCoreAdd" runat="server" Text="Add" /><br />
                                <asp:Button ID="btnCoreRemove" runat="server" Text="Remove" />
                            </td>
                            <td valign="top">
                                <strong>Selected Subjects</strong><br />
                                <div id='Div5' style="z-index: 102; left: 13px; overflow: auto; width: 400px; height: 300px">
                                    <asp:ListBox ID="lstSelectedCoreSubjects" runat="server" Font-Size="Smaller" Width="700px"
                                        Height="600px"></asp:ListBox>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel runat="server" HeaderText="Service Subjects" ID="TabService">
            <HeaderTemplate>
                Service Subjects
            </HeaderTemplate>
            <ContentTemplate>
                <div style="border: 2px">
                    <table>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtServiceSearch" runat="server"></asp:TextBox><asp:Button ID="btnServiceSearch"
                                    runat="server" ToolTip="Search for a subject" Text="Find" /><br />
                                <div id='hello' style="z-index: 102; left: 13px; overflow: auto; width: 400px; height: 300px">
                                    <asp:ListBox ID="lstServiceSubjects" runat="server" Font-Size="Smaller" Width="700px"
                                        Height="600px"></asp:ListBox>
                                </div>
                            </td>
                            <td align="center" valign="middle" style="width: 120">
                                <asp:Button ID="btnServiceAdd" runat="server" Text="Add" /><br />
                                <asp:Button ID="btnServiceRemove" runat="server" Text="Remove" />
                            </td>
                            <td>
                                <strong>Selected Subjects</strong><br />
                                <div id='Div2' style="z-index: 102; left: 13px; overflow: auto; width: 400px; height: 300px">
                                    <asp:ListBox ID="lstSelectedServiceSubject" runat="server" Font-Size="Smaller" Width="700px"
                                        Height="600px"></asp:ListBox>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel runat="server" HeaderText="Clusters" ID="TabClusters">
            <ContentTemplate>
                <table>
                    <tr>
                        <td>
                            <strong>All Site Clusters</strong><br />
                            <asp:ListBox ID="lstAllClusters" runat="server" Font-Size="Smaller" Width="400px"
                                Height="300px"></asp:ListBox>
                        </td>
                        <td align="center" valign="middle" style="width: 120">
                            <asp:Button ID="btnClusterAdd" runat="server" Text="Add" /><br />
                            <asp:Button ID="btnClusterRemove" runat="server" Text="Remove" />
                        </td>
                        <td>
                            <strong>Selected Site Clusters</strong><br />
                            <asp:ListBox ID="lstSelectedClusters" runat="server" Font-Size="Smaller" Width="400px"
                                Height="300px"></asp:ListBox>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
</asp:Panel>
