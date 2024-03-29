<%@ Control Language="C#" ClassName="AccountTickets" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
<%@ Register Assembly="Sage.SalesLogix.Client.GroupBuilder" Namespace="Sage.SalesLogix.Client.GroupBuilder" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.PickList" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.DependencyLookup" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.Lookup" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.Timeline" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.HighLevelTypes" Namespace="Sage.SalesLogix.HighLevelTypes" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.Platform.WebPortal" Namespace="Sage.Platform.WebPortal.SmartParts" TagPrefix="SalesLogix" %>
<%//------------------------------------------------------------------------
//This file was generated by a tool.  Changes to this file may cause incorrect behavior and will be lost if the code is regenerated.
//------------------------------------------------------------------------ %>
  <SalesLogix:SlxGridView runat="server" ID="grdAccountTickets" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 AllowPaging="true" PageSize="10" OnPageIndexChanging="grdAccountTicketspage_changing" EmptyTableRowText="<%$ resources: grdAccountTickets.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True"  AllowSorting="true" OnSorting="grdAccountTickets_Sorting"  ShowSortIcon="true" >
<Columns>
   <asp:TemplateField   HeaderText="<%$ resources: grdAccountTickets.1e4f2526-ce06-4a52-8e3d-cec118b289e0.ColumnHeading %>"       SortExpression="TicketNumber"  >
    <itemtemplate>
      <SalesLogix:PageLink runat="server" NavigateUrl="Ticket"
   EntityId='<%# dsGrid2.getPropertyValue(Container.DataItem, "Id") %>'     Text='<%# dsGrid2.getPropertyValue(Container.DataItem, "TicketNumber") %>' 
         LinkType="EntityAlias"></SalesLogix:PageLink>
     </itemtemplate></asp:TemplateField>
      <asp:TemplateField   HeaderText="<%$ resources: grdAccountTickets.54ff3269-073e-4a18-98c6-a8fae49ad182.ColumnHeading %>"       SortExpression="ReceivedDate"  >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdAccountTicketscol2" DisplayTime="false"  DisplayMode="AsText" DateTimeValue='<%#  dsGrid2.getPropertyValue(Container.DataItem, "ReceivedDate")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdAccountTickets.65c25ec4-6a55-475c-8696-0b3e9d84217d.ColumnHeading %>"       SortExpression="StatusCode"  >
    <itemtemplate>
   <SalesLogix:PickListControl runat="server" ID="grdAccountTicketscol3" PickListId="kSYST0000375" ValueStoredAsText="False" PickListName="Ticket Status" PickListValue='<%#  dsGrid2.getPropertyValue(Container.DataItem, "StatusCode")  %>' DisplayMode="AsText" CssClass="" />
   </itemtemplate></asp:TemplateField>
    <asp:BoundField DataField="Urgency.Description" 
      HeaderText="<%$ resources: grdAccountTickets.41974058-6d0f-41b8-bc29-ac7832c73d68.ColumnHeading %>"       SortExpression="Urgency.Description"    >
      </asp:BoundField>
    <asp:TemplateField   HeaderText="<%$ resources: grdAccountTickets.f5080f1e-073a-4105-8ea8-c70526aa2621.ColumnHeading %>"       SortExpression="NeededByDate"  >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdAccountTicketscol5" DisplayTime="false"  DisplayMode="AsText" DateTimeValue='<%#  dsGrid2.getPropertyValue(Container.DataItem, "NeededByDate")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:BoundField DataField="TicketProblem.Notes" 
      HeaderText="<%$ resources: grdAccountTickets.78de2ee1-ee39-47f2-b525-7f14edd34989.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="TicketSolution.Notes" 
      HeaderText="<%$ resources: grdAccountTickets.00ade5f0-72cc-4ec8-8c00-99526dbdae73.ColumnHeading %>"          >
      </asp:BoundField>
 </Columns>
    <PagerSettings Mode="NumericFirstLast" FirstPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=Start_16x16" LastPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=End_16x16" />
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">


protected void grdAccountTicketspage_changing(object sender, GridViewPageEventArgs e)
{
 grdAccountTickets.PageIndex = e.NewPageIndex;
 grdAccountTickets.DataBind();
}
protected void grdAccountTickets_Sorting(object sender, GridViewSortEventArgs e) { }
</script>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="AccountTickets_RTools" ToolbarLocation="right">
    <asp:HyperLink runat="server" ID="btnAddTicket"   ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16X16"    ToolTip="<%$ resources: btnAddTicket.ToolTip %>"    NavigateUrl="~/InsertTicket.aspx?modeid=Insert"     />

  <SalesLogix:PageLink ID="lnkAccountTicketsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="ticketstab.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

<script runat="server" type="text/C#">
private Sage.Platform.Security.IRoleSecurityService _roleSecurityService;
/// <summary>
/// Gets or sets the role security service.
/// </summary>
/// <value>The role security service.</value>
[Sage.Platform.Application.ServiceDependency]
public Sage.Platform.Security.IRoleSecurityService RoleSecurityService
{
   set
      {
         _roleSecurityService = Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.Platform.Security.IRoleSecurityService>(true);
      }
      get
      {
         return _roleSecurityService;
      }
}

public override Type EntityType
{
	get { return typeof(Sage.Entity.Interfaces.IAccount); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsGrid2;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsGrid2
{ 
  get 
  {
    if (_dsGrid2 == null)
    {
             _dsGrid2 = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.ITicket), 
	    EntityType              ,"Tickets", System.Reflection.MemberTypes.Property);
                   _dsGrid2.UseSmartQuery = true;
      	   	}
 	return _dsGrid2;
  }
}

void dsGrid2_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsGrid2.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsGrid2);
   }
}

 



 

protected override void OnAddEntityBindings() { 
       dsGrid2.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("Tickets", grdAccountTickets ));
   dsGrid2.BindFieldNames = new String[] { "Id","TicketNumber","ReceivedDate","StatusCode","Urgency.Description","NeededByDate","TicketProblem.Notes","TicketSolution.Notes" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsGrid2_OnCurrentEntitySet);
     
    }
	   

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 
}

protected override void OnFormBound()
{
if (dsGrid2.SourceObject == null) { dsGrid2.SourceObject = BindingSource.Current; }
if (dsGrid2.SourceObject == null) { RegisterBindingsWithClient(dsGrid2); }
dsGrid2.Bind();



}



public override Sage.Platform.Application.UI.ISmartPartInfo GetSmartPartInfo(Type smartPartInfoType)
{
	ToolsSmartPartInfo tinfo = new ToolsSmartPartInfo();
    	
	foreach (Control c in Controls)
	{
		SmartPartToolsContainer cont = c as SmartPartToolsContainer;
		if (cont != null)
		{
			switch (cont.ToolbarLocation)
			{
				case SmartPartToolsLocation.Right:
					foreach (Control tool in cont.Controls)
					{
											tinfo.RightTools.Add(tool);
										}
					break;
				case SmartPartToolsLocation.Center:
					foreach (Control tool in cont.Controls)
					{
						tinfo.CenterTools.Add(tool);
					}
					break;
				case SmartPartToolsLocation.Left:
					foreach (Control tool in cont.Controls)
					{
						tinfo.LeftTools.Add(tool);
					}
					break;
			}
		}
	}
	
		return tinfo;
}

private Sage.Platform.Controls.IEntityForm _formAdapter;

public Sage.Platform.Controls.IEntityForm FormAdapter
{
	get { return _formAdapter ?? (_formAdapter = new AccountTicketsAdapter(this)); }
}

public class AccountTicketsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAccountTickets
{
	public AccountTicketsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.IDataGridControl _grdAccountTickets;
	public Sage.Platform.Controls.IDataGridControl grdAccountTickets
	{
		get { return FindControl(ref _grdAccountTickets, "grdAccountTickets"); }
	}
	private Sage.Platform.Controls.IDataSourceControl _dsGrid2;
	public Sage.Platform.Controls.IDataSourceControl dsGrid2
	{
		get { return FindControl(ref _dsGrid2, "dsGrid2"); }
	}
	private Sage.Platform.Controls.ILinkControl _btnAddTicket;
	public Sage.Platform.Controls.ILinkControl btnAddTicket
	{
		get { return FindControl(ref _btnAddTicket, "btnAddTicket"); }
	}

}

</script>

<script type="text/javascript">
</script>
