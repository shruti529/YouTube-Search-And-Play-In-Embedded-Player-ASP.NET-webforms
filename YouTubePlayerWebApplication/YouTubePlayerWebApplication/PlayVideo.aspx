<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlayVideo.aspx.cs" Inherits="YouTubePlayerWebApplication.PlayVideo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
    <iframe runat="server" id="player" type="text/html" width="640" height="390" src="http://www.youtube.com/embed/M7lc1UVf-VE?enablejsapi=1&origin=http://example.com"
  frameborder="0"></iframe>
                    <br />
        <asp:Button ID="btnBack" runat="server" Text="<%$ Resources:Resource, btnBack%>" OnClientClick="JavaScript:window.history.back(1);return false;"></asp:Button>
    </div>
    </form>
</body>
</html>
