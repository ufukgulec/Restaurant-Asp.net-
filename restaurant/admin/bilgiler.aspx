<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="bilgiler.aspx.cs" Inherits="restaurant.admin.bilgiler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=restaurantEntities" DefaultContainerName="restaurantEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="anasayfas" EntityTypeFilter="anasayfa">
    </asp:EntityDataSource>
    <asp:DetailsView CssClass="table" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="EntityDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
            <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
            <asp:BoundField DataField="acikGun" HeaderText="acikGun" SortExpression="acikGun" />
            <asp:BoundField DataField="acikSaat" HeaderText="acikSaat" SortExpression="acikSaat" />
            <asp:BoundField DataField="slogan" HeaderText="slogan" SortExpression="slogan" />
            <asp:BoundField DataField="arkaPlan" HeaderText="arkaPlan" SortExpression="arkaPlan" />
            <asp:BoundField DataField="videoLink" HeaderText="videoLink" SortExpression="videoLink" >
            </asp:BoundField>
            <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
            <asp:BoundField DataField="eposta" HeaderText="eposta" SortExpression="eposta" />
            <asp:BoundField DataField="harita" HeaderText="harita" SortExpression="harita" >
            </asp:BoundField>
            <asp:BoundField DataField="instagram" HeaderText="instagram" SortExpression="instagram" />
            <asp:BoundField DataField="twitter" HeaderText="twitter" SortExpression="twitter" />
            <asp:BoundField DataField="facebook" HeaderText="facebook" SortExpression="facebook" />
            <asp:CommandField ShowEditButton="True" >
            <ControlStyle CssClass="btn btn-success m-1" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <br />
    </asp:Content>
