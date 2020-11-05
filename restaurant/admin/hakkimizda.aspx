<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="restaurant.admin.hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Hakkımızda Bölümü:<asp:DetailsView CssClass="table" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="EntityDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="baslik" HeaderText="baslik" SortExpression="baslik" />
            <asp:BoundField DataField="aciklama" HeaderText="aciklama" SortExpression="aciklama" />
            <asp:BoundField DataField="foto" HeaderText="foto" SortExpression="foto" />
            <asp:BoundField DataField="arkaPlan" HeaderText="arkaPlan" SortExpression="arkaPlan" />
            <asp:CommandField ShowEditButton="True">
            <ControlStyle CssClass="btn btn-success" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=restaurantEntities" DefaultContainerName="restaurantEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="hakkimizdas" EntityTypeFilter="hakkimizda">
    </asp:EntityDataSource>
    Neden Biz Bölümü:<br />
    <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSource2">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="baslik" HeaderText="baslik" SortExpression="baslik" />
            <asp:BoundField DataField="aciklama" HeaderText="aciklama" SortExpression="aciklama">
            <ControlStyle Width="100%" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
            <ControlStyle CssClass="btn btn-success" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=restaurantEntities" DefaultContainerName="restaurantEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="nedenbizs" EntityTypeFilter="nedenbiz">
    </asp:EntityDataSource>
</asp:Content>
