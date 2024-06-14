<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Records.aspx.cs" Inherits="Form_Inline_Method.Records" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Records</title>
    <%--Bootstrap--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.rtl.min.css" integrity="sha384-dpuaG1suU0eT09tx5plTaGMLBsfDLzUCCUXOY2j/LSvXYuG6Bqs43ALlhIqAJVRb" crossorigin="anonymous" />
    <%--CSS--%>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            background: rgb(32,32,32);
            background: radial-gradient(circle, rgba(32,32,32,1) 41%, rgba(0,0,0,0.947391456582633) 53%);
        }

        #master-container {
            /* background-color: #333;*/
            height: 39.5rem;
        }

        #rd {
            padding-top: 6rem;
        }

        #footer {
            padding-top: 6rem;
        }
    </style>
</head>
<body>
    <%--Navbar--%>
    <div id="master-container">
        <nav class="navbar navbar-expand-lg" id="Container">
            <div class="container-fluid w-75">
                <a class="navbar-brand text-light fw-bold" href="#">Smasher</a>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                        <li class="nav-item">
                            <a class="nav-link text-light " href="Form.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fw-bold text-light active" aria-current="page" href="#">Records</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <%--Grid--%>
        <form runat="server">
            <div id="rd" class="container">
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging" CellPadding="3" ForeColor="Black" CellSpacing="5" GridLines="Vertical" Width="100%" AllowPaging="True" PageSize="5" Height="340px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="Gray" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
        </form>
        <%--footer--%>
        <footer id="footer" class="mastfoot">
            <div class="inner text-light text-center">
                <span>All Rights Reserved</span>
            </div>
        </footer>
    </div>
</body>
</html>
