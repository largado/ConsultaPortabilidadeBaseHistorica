<%@ Page Title="Consulta Portabilidade Base Histórica" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BddFull.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 85px;
            width: 550px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        
        <div class="auto-style1">
            <h2>Consulta Portabilidade Base Histórica</h2>
            
        </div> 
        
        
        Digite o número de telefone sem o 55:
        <asp:TextBox ID="TextBox1" runat="server" required placeholder=XXXXXXXXXXX></asp:TextBox>
        
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
        
        <h2 title="lblResultado">
        
        </h2>
        <table class="table" ID="tblResultado" runat="server" aria-atomic="False" aria-busy="False" aria-disabled="False" border="1" title="tblResultado" visible="False" spellcheck="False" style="border: thin solid #000000" >
            <tr>
                <th>Bilhete</th>
                <th>Telefone</th>
                <th>RN1</th>
                <th>ID da Receptora</th>
                <th>EOT</th>
                <th>Data e hora da ativação</th>
                <th>LNP</th>
                <th>Motivo</th>
                <th>Tipo de linha</th>
                <th>CNL</th>
                <th>Data e hora da Janela de Portabilidade</th>
            </tr>
            <tr>
                <td><asp:Label ID="lblBilhete" runat="server" Height="79px" /></td> 
                <td><asp:Label ID="lblTelefone" runat="server" Height="79px" /></td> 
                <td><asp:Label ID="lblRN1" runat="server" Height="79px" /></td>
                <td><asp:Label ID="lblIDReceptora" runat="server" Height="79px" /></td> 
                <td><asp:Label ID="lblEOT" runat="server" Height="79px" /></td> 
                <td><asp:Label ID="lblDataHoraAtivacao" runat="server" Height="79px" /></td> 
                <td><asp:Label ID="lblLNP" runat="server" Height="79px" /></td> 
                <td><asp:Label ID="lblMotivo" runat="server" Height="79px" /></td> 
                <td><asp:Label ID="lblTipoLinha" runat="server" Height="79px" /></td> 
                <td><asp:Label ID="lblCNL" runat="server" Height="79px" /></td> 
                <td><asp:Label ID="lblDataHoraJanelaPort" runat="server" Height="79px" /></td> 
            </tr>
        
        </table>

    </form>
</body>
</html>
