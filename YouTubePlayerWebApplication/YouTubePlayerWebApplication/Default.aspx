<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="YouTubePlayerWebApplication._Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
    </head>

    <body>
        <form id="form1" runat="server">
                <div> 
                    <asp:TextBox ID="txtSearch" runat="server"/>
                    <asp:Button Text="<%$ Resources:Resource, btnSearch%>"  runat="server" OnClick="btnSearch_Click" />
                    <br />
                    <asp:ListView ID="VideosListView" runat="server">
                    <ItemTemplate>
                         <asp:HyperLink runat="server" NavigateUrl='<%# "~/PlayVideo.aspx?VideoId=" + DataBinder.Eval(Container.DataItem, "VideoId")%>'
                             Text='<%# DataBinder.Eval(Container.DataItem, "Title")%>'
                             ImageUrl='<%# "https://img.youtube.com/vi/" + DataBinder.Eval(Container.DataItem, "VideoId") + "/default.jpg" %>'
                             ></asp:HyperLink>
                   </ItemTemplate>
                   </asp:ListView>
                </div>            
        </form>
    </body>
</html>

