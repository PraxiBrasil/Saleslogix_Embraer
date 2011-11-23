<%@ Control Language="C#" ClassName="ReturnDefects" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdDefectReturns" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
EmptyTableRowText="<%$ resources: grdDefectReturns.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdDefectReturns_RowCommand" 
 DataKeyNames="InstanceId,Id" 
 OnRowDeleting="grdDefectReturns_RowDeleting" OnRowDataBound="grdDefectReturns_RowDataBound" >
<Columns>
  <asp:ButtonField CommandName="Delete" 
  Text="<%$ resources: grdDefectReturns.32f8f79a-2bfb-4d18-b87c-28898a0ff4a2.Text %>"                >
  	    </asp:ButtonField>
      <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.d97f1267-aa32-49bb-943b-6f8f6da497e6.ColumnHeading %>"        >
    <itemtemplate>
      <SalesLogix:PageLink runat="server" NavigateUrl="Defect"
   EntityId='<%# dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.Id") %>'     Text='<%# dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.DefectNumber") %>' 
         LinkType="EntityAlias"></SalesLogix:PageLink>
     </itemtemplate></asp:TemplateField>
      <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.4293012d-f7cd-411d-81de-c2c4456174e6.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:PickListControl runat="server" ID="grdDefectReturnscol3" PickListId="" ValueStoredAsText="False" PickListName="Defect Priority" PickListValue='<%#  dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.PriorityCode")  %>' DisplayMode="AsText" CssClass="" />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.ef4e3f33-efb9-407b-8e61-449bf64555ee.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:PickListControl runat="server" ID="grdDefectReturnscol4" PickListId="" ValueStoredAsText="False" PickListName="Defect Severity" PickListValue='<%#  dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.SeverityCode")  %>' DisplayMode="AsText" CssClass="" />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.296044ae-5f09-4518-9890-656183619548.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:PickListControl runat="server" ID="grdDefectReturnscol5" PickListId="" ValueStoredAsText="False" PickListName="Defect Status" PickListValue='<%#  dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.StatusCode")  %>' DisplayMode="AsText" CssClass="" />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.6fda7a19-4d96-45c3-be13-d5f9fbb902be.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:SlxUserControl runat="server" ID="grdDefectReturnscol6" DisplayMode="AsText" LookupResultValue='<%#  dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.RecordedBy")  %>' CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.75ee57b5-b2e0-4e47-89da-32691e900c0f.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdDefectReturnscol7" DisplayTime="false"  DisplayMode="AsText" DateTimeValue='<%#  dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.RecordedDate")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.05485aec-e5ab-4e52-9c3c-75c45f784034.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:OwnerControl runat="server" ID="grdDefectReturnscol8" DisplayMode="AsText" LookupResultValue='<%#  dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.AssignedTo")  %>' CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.5f79816b-677f-4a45-90df-6a1fa6817e39.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdDefectReturnscol9" DisplayTime="false"  DisplayMode="AsText" DateTimeValue='<%#  dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.AssignedDate")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.c41aad8a-1925-4c24-929c-6c7a8ce301c0.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:SlxUserControl runat="server" ID="grdDefectReturnscol10" DisplayMode="AsText" LookupResultValue='<%#  dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.ClosedBy")  %>' CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.9b47625a-e4cb-473b-b301-2115756881a8.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdDefectReturnscol11" DisplayTime="false"  DisplayMode="AsText" DateTimeValue='<%#  dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.ClosedDate")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.c101551f-dbf5-4b44-9fcf-4ea192678f9b.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:PickListControl runat="server" ID="grdDefectReturnscol12" PickListId="" ValueStoredAsText="False" PickListName="Defect Resolution" PickListValue='<%#  dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.ResolutionCode")  %>' DisplayMode="AsText" CssClass="" />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDefectReturns.261cfaba-d6d2-4cd9-a275-9b863a7353e3.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:PickListControl runat="server" ID="grdDefectReturnscol13" PickListId="" ValueStoredAsText="False" PickListName="Defect Fixed in Build" PickListValue='<%#  dsDefectReturns.getPropertyValue(Container.DataItem, "Defect.FixedInbuild")  %>' DisplayMode="AsText" CssClass="" />
   </itemtemplate></asp:TemplateField>
 </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

   private int _grdDefectReturnsdeleteColumnIndex = -2;
protected int grdDefectReturnsDeleteColumnIndex
{
	get
	{
		if (_grdDefectReturnsdeleteColumnIndex == -2)
		{
			int bias = (grdDefectReturns.ExpandableRows) ? 1 : 0;
			_grdDefectReturnsdeleteColumnIndex = -1;
			int colcount = 0;
			foreach (DataControlField col in grdDefectReturns.Columns)
			{
				ButtonField btn = col as ButtonField;
				if (btn != null)
				{
					if (btn.CommandName == "Delete")
					{
						_grdDefectReturnsdeleteColumnIndex = colcount + bias;
						break;
					}
				}
				colcount++;
			}
		}
		return _grdDefectReturnsdeleteColumnIndex;
	}
}

protected void grdDefectReturns_RowDataBound(object sender, GridViewRowEventArgs e)
{
}
                                       
protected void grdDefectReturns_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsDefectReturns.SelectedIndex = rowIndex;
		object currentEntity = dsDefectReturns.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
		string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
		    if (grdDefectReturns.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdDefectReturns.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsDefectReturns.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
		                currentEntity = dsDefectReturns.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }                 
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdDefectReturns.DataKeys[rowIndex].Values)
            {
                if (val.Key.ToString() != "InstanceId")
                {
                    id = val.Value.ToString();
                }
            }
        }		
		if (e.CommandName.Equals("Delete"))
		{
            Sage.Entity.Interfaces.IReturn mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.IReturn;
			if (mainentity != null)
			{
			    Sage.Entity.Interfaces.IDefectReturn childEntity = null;
			    if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.IDefectReturn))
			    {
			        childEntity = (Sage.Entity.Interfaces.IDefectReturn)currentEntity;    
			    }
			    else if (id != null)
			    {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.IDefectReturn>(id);
            }
				if(childEntity != null)
				{
			         mainentity.DefectReturns.Remove(childEntity);
					 mainentity.Save();
					 if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
					 {
					     childEntity.Delete();
					 }
					 dsDefectReturns.SelectedIndex = -1;
			    }
		    }
		}
	}
    grdDefectReturns_refresh();
}
	
	protected void grdDefectReturns_refresh()
	{
		if (PageWorkItem != null) {
			Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
			if (refresher != null)
			{
				refresher.RefreshAll();
			}
			else
			{
				Response.Redirect(Request.Url.ToString());
			}
		}
	}
	
            protected void grdDefectReturns_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		grdDefectReturns.SelectedIndex = -1;
	}
	</script>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="ReturnDefects_RTools" ToolbarLocation="right">
   <SalesLogix:LookupControl runat="server" ID="lueAssociateDefect"  ToolTip="<%$ resources: lueAssociateDefect.ToolTip %>" LookupEntityName="Defect" LookupEntityTypeName="Sage.Entity.Interfaces.IDefect, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="ButtonOnly" AutoPostBack="true" LookupImageURL="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAssociateDefect.LookupProperties.DefectNumber.PropertyHeader %>" PropertyName="DefectNumber" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAssociateDefect.LookupProperties.Subject.PropertyHeader %>" PropertyName="Subject" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAssociateDefect.LookupProperties.DefectProblem.Notes.PropertyHeader %>" PropertyName="DefectProblem.Notes" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAssociateDefect.LookupProperties.DefectSolution.Notes.PropertyHeader %>" PropertyName="DefectSolution.Notes" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAssociateDefect.LookupProperties.AssignedTo.OwnerDescription.PropertyHeader %>" PropertyName="AssignedTo.OwnerDescription" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAssociateDefect.LookupProperties.Owner.OwnerDescription.PropertyHeader %>" PropertyName="Owner.OwnerDescription" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
                 

  <SalesLogix:PageLink ID="lnkReturnDefectsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="returndefectstab.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.IReturn); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsDefectReturns;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsDefectReturns
{ 
  get 
  {
    if (_dsDefectReturns == null)
    {
             _dsDefectReturns = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IDefectReturn), 
	    EntityType              ,"DefectReturns", System.Reflection.MemberTypes.Property);
                   _dsDefectReturns.UseSmartQuery = true;
      	   	}
 	return _dsDefectReturns;
  }
}

void dsDefectReturns_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsDefectReturns.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsDefectReturns);
   }
}

 



 

protected override void OnAddEntityBindings() { 
       dsDefectReturns.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("DefectReturns", grdDefectReturns ));
   dsDefectReturns.BindFieldNames = new String[] { "Id","Defect.DefectNumber","Defect","Defect.Id","Defect.PriorityCode","Defect.SeverityCode","Defect.StatusCode","Defect.RecordedBy","Defect.RecordedDate","Defect.AssignedTo","Defect.AssignedDate","Defect.ClosedBy","Defect.ClosedDate","Defect.ResolutionCode","Defect.FixedInbuild" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsDefectReturns_OnCurrentEntitySet);
     
    }
	   
protected void lueAssociateDefect_ChangeAction(object sender, EventArgs e) {
    if (lueAssociateDefect.LookupResultValue != null)
    {
        Sage.Entity.Interfaces.IReturn parentEntity = BindingSource.Current as Sage.Entity.Interfaces.IReturn;
        Sage.Entity.Interfaces.IDefect relatedEntity = lueAssociateDefect.LookupResultValue as Sage.Entity.Interfaces.IDefect;
        Sage.Platform.WebPortal.EntityPage page = (Sage.Platform.WebPortal.EntityPage)Page;
		// check for duplicates
        bool found = false;
        if ((parentEntity != null) && (relatedEntity != null))
        {
		        Sage.Entity.Interfaces.IDefectReturn relationshipEntity = Sage.Platform.EntityFactory.Create<Sage.Entity.Interfaces.IDefectReturn>();
		if (!found)
        {
            relationshipEntity.Return = parentEntity;
            relationshipEntity.Defect = relatedEntity;
            parentEntity.DefectReturns.Add(relationshipEntity);
            dsDefectReturns.SelectedMember = relationshipEntity;
            if (page.ModeId.ToUpper() != "INSERT")
            {
				parentEntity.Save();
            }
		}
        }
    }

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 lueAssociateDefect.LookupResultValueChanged += new EventHandler(lueAssociateDefect_ChangeAction);


}

protected override void OnFormBound()
{
ClientBindingMgr.RegisterBoundControl(lueAssociateDefect);

if (dsDefectReturns.SourceObject == null) { dsDefectReturns.SourceObject = BindingSource.Current; }
if (dsDefectReturns.SourceObject == null) { RegisterBindingsWithClient(dsDefectReturns); }
dsDefectReturns.Bind();



}



public override Sage.Platform.Application.UI.ISmartPartInfo GetSmartPartInfo(Type smartPartInfoType)
{
	ToolsSmartPartInfo tinfo = new ToolsSmartPartInfo();
    	if (BindingSource != null)
	{
		if (BindingSource.Current != null)
		{
			tinfo.Description = BindingSource.Current.ToString();
			tinfo.Title = BindingSource.Current.ToString();
		}
	}
    	
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
	get { return _formAdapter ?? (_formAdapter = new ReturnDefectsAdapter(this)); }
}

public class ReturnDefectsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IReturnDefects
{
	public ReturnDefectsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.IDataGridControl _grdDefectReturns;
	public Sage.Platform.Controls.IDataGridControl grdDefectReturns
	{
		get { return FindControl(ref _grdDefectReturns, "grdDefectReturns"); }
	}
	private Sage.Platform.Controls.IDataSourceControl _dsDefectReturns;
	public Sage.Platform.Controls.IDataSourceControl dsDefectReturns
	{
		get { return FindControl(ref _dsDefectReturns, "dsDefectReturns"); }
	}
	private Sage.Platform.Controls.ILookupControl _lueAssociateDefect;
	public Sage.Platform.Controls.ILookupControl lueAssociateDefect
	{
		get { return FindControl(ref _lueAssociateDefect, "lueAssociateDefect"); }
	}

}

</script>

<script type="text/javascript">
</script>