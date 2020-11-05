<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="restaurant.admin.menu" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=restaurantEntities" DefaultContainerName="restaurantEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="menus" EntityTypeFilter="menu">
    </asp:EntityDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
            <asp:BoundField DataField="icindekiler" HeaderText="icindekiler" SortExpression="icindekiler" />
            <asp:BoundField DataField="fiyat" HeaderText="fiyat" SortExpression="fiyat" />
            <asp:BoundField DataField="kategoriId" HeaderText="kategoriId" SortExpression="kategoriId" />
            <asp:BoundField DataField="resim" HeaderText="resim" SortExpression="resim" />
            <asp:CommandField ShowEditButton="True">
                <ControlStyle CssClass="btn btn-success" />
            </asp:CommandField>
            <asp:CommandField ShowDeleteButton="True">
                <ControlStyle CssClass="btn btn-danger" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <br />
    MENÜYE EKLEME:<table class="table" style="width: 46%">
        <tr>
            <td style="width: 96px">Ad:</td>
            <td style="width: 495px">
                <asp:TextBox ID="TextBoxad" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 96px">içindekiler</td>
            <td style="width: 495px">
                <asp:TextBox ID="TextBoxicindekler" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 96px">fiyat</td>
            <td style="width: 495px">
                <asp:TextBox ID="TextBoxfiyat" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 96px">kategoriID</td>
            <td style="width: 495px">
                <asp:DropDownList ID="DropDownListkategori" runat="server" DataSourceID="EntityDataSource2" DataTextField="ad" DataValueField="id">
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=restaurantEntities" DefaultContainerName="restaurantEntities" EnableFlattening="False" EntitySetName="kategoris" EntityTypeFilter="kategori" Select="it.[id], it.[ad]">
                </asp:EntityDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 96px">resim</td>
            <td style="width: 495px">
                <asp:TextBox ID="TextBoxresim" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 495px">
                <asp:Button ID="Ekle" runat="server" CssClass="btn btn-primary" OnClick="Ekle_Click" Text="Ekle" Width="303px" />
            </td>
        </tr>
    </table>
    SPESYALLERE EKLEME:<br />
    <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="GridView2" CssClass="table" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSource3">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                    <asp:BoundField DataField="baslik" HeaderText="baslik" SortExpression="baslik" />
                    <asp:BoundField DataField="aciklama" HeaderText="aciklama" SortExpression="aciklama" />
                    <asp:BoundField DataField="resim" HeaderText="resim" SortExpression="resim" />
                    <asp:CommandField ShowEditButton="True">
                        <ControlStyle CssClass="btn btn-success" />
                    </asp:CommandField>
                    <asp:CommandField ShowDeleteButton="True">
                    <ControlStyle CssClass="btn btn-danger m-1" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=restaurantEntities" DefaultContainerName="restaurantEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="specials" EntityTypeFilter="special">
            </asp:EntityDataSource>
        </div>
        <div class="col-md-12">
            <table class="table" style="width: auto">
                <tr>
                    <td style="width: 79px">Ad:</td>
                    <td>
                        <asp:TextBox ID="TextBoxSad" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 79px">Başlık</td>
                    <td>
                        <asp:TextBox ID="TextBoxSbaslik" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 79px">açıklama</td>
                    <td>
                        <asp:TextBox ID="TextBoxSaciklama" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 79px">resim</td>
                    <td>
                        <asp:TextBox ID="TextBoxSresim" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 79px">&nbsp;</td>
                    <td>
                        <asp:Button ID="Ekle0" runat="server" CssClass="btn btn-primary" OnClick="spesiyal_Click" Text="Ekle" Width="303px" />
                    </td>
                </tr>
            </table>
        </div>
    </div>

    <br />
    <br />
</asp:Content>
