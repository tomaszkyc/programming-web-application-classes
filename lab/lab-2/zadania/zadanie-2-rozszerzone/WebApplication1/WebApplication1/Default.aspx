<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-light">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="Default.aspx">Strona główna</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Ankieta.aspx?view=nowy">Ankieta dla nowych klientów</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Ankieta.aspx?view=aktualny">Ankieta dla aktualnych klientów</a>
    </li>
  </ul>
</nav>
<br>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <h3>Nasze produkty:</h3><br />
            <asp:AdRotator ID="AdRotator1" onadcreated="AdRotator1_AdCreated" runat="server" AdvertisementFile="~/Adv/adv.xml" />
        </div>
    </form>
</body>
</html>
