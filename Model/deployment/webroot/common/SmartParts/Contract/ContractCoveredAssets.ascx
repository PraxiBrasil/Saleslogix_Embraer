<%@ Control Language="C#" ClassName="ContractCoveredAssets" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdAssets" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 AllowPaging="true" PageSize="20" OnPageIndexChanging="grdAssetspage_changing" EmptyTableRowText="<%$ resources: grdAssets.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdAssets_RowCommand" 
 DataKeyNames="InstanceId,Id" 
 AllowSorting="true" OnSorting="grdAssets_Sorting"  OnRowDeleting="grdAssets_RowDeleting" OnRowDataBound="grdAssets_RowDataBound"  ShowSortIcon="true" >
<Columns>
   <asp:BoundField DataField="Asset.ProductName" 
      HeaderText="<%$ resources: grdAssets.15f0f7cd-c0e1-4a3f-86e3-07de1346fbd1.ColumnHeading %>"       SortExpression="Asset.ProductName"    >
      </asp:BoundField>
    <asp:BoundField DataField="Asset.ActualId" 
      HeaderText="<%$ resources: grdAssets.082ee366-bc53-40d2-aea3-fbd652cdeb4e.ColumnHeading %>"       SortExpression="Asset.ActualId"    >
      </asp:BoundField>
    <asp:BoundField DataField="Asset.SerialNumber" 
      HeaderText="<%$ resources: grdAssets.49a9916c-d8ef-49a3-8b79-2ca3f98372ee.ColumnHeading %>"       SortExpression="Asset.SerialNumber"    >
      </asp:BoundField>
    <asp:BoundField DataField="Asset.Quantity" 
      HeaderText="<%$ resources: grdAssets.eb1db231-2bbc-44ae-809e-e279621c91e9.ColumnHeading %>"       SortExpression="Asset.Quantity"    >
      </asp:BoundField>
    <asp:TemplateField   HeaderText="<%$ resources: grdAssets.7eea2af8-cb5f-422f-94f0-292868a8a00d.ColumnHeading %>"       SortExpression="Asset.Contact.NameLF"  >
    <itemtemplate>
      <SalesLogix:PageLink runat="server" NavigateUrl="Contact"
   EntityId='<%# dtsAssets.getPropertyValue(Container.DataItem, "Asset.Contact.Id") %>'     Text='<%# dtsAssets.getPropertyValue(Container.DataItem, "Asset.Contact.NameLF") %>' 
         LinkType="EntityAlias"></SalesLogix:PageLink>
     </itemtemplate></asp:TemplateField>
      <asp:BoundField DataField="Asset.Location" 
      HeaderText="<%$ resources: grdAssets.a1ea97d8-87ce-405b-bed4-9d3ea43042c7.ColumnHeading %>"       SortExpression="Asset.Location"    >
      </asp:BoundField>
    <asp:BoundField DataField="Asset.AssetCode" 
      HeaderText="<%$ resources: grdAssets.398bf07b-cdb9-4cd5-b84a-44f9a4da4a44.ColumnHeading %>"       SortExpression="Asset.AssetCode"    >
      </asp:BoundField>
    <asp:BoundField DataField="Asset.Returned" 
      HeaderText="<%$ resources: grdAssets.2d4ee75a-d73d-4fb9-9e86-515ff3e8a614.ColumnHeading %>"       SortExpression="Asset.Returned"    >
      </asp:BoundField>
    <asp:BoundField DataField="Asset.Evaluation" 
      HeaderText="<%$ resources: grdAssets.c7b31a0f-8d61-44e9-8770-e44d2885dffe.ColumnHeading %>"       SortExpression="Asset.Evaluation"    >
      </asp:BoundField>
   <asp:ButtonField CommandName="Delete" 
  Text="<%$ resources: grdAssets.defc4060-3e82-47c5-9811-2eecf8169d64.Text %>"                >
  	    </asp:ButtonField>
   </Columns>
    <PagerSettings Mode="NumericFirstLast" FirstPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=Start_16x16" LastPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=End_16x16" />
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

                              private int _grdAssetsdeleteColumnIndex = -2;
protected int grdAssetsDeleteColumnIndex
{
	get
	{
		if (_grdAssetsdeleteColumnIndex == -2)
		{
			int bias = (grdAssets.ExpandableRows) ? 1 : 0;
			_grdAssetsdeleteColumnIndex = -1;
			int colcount = 0;
			foreach (DataControlField col in grdAssets.Columns)
			{
				ButtonField btn = col as ButtonField;
				if (btn != null)
				{
					if (btn.CommandName == "Delete")
					{
						_grdAssetsdeleteColumnIndex = colcount + bias;
						break;
					}
				}
				colcount++;
			}
		}
		return _grdAssetsdeleteColumnIndex;
	}
}

protected void grdAssets_RowDataBound(object sender, GridViewRowEventArgs e)
{
	if (e.Row.RowType == DataControlRowType.DataRow)
	{
		if ((grdAssetsDeleteColumnIndex >= 0) && (grdAssetsDeleteColumnIndex < e.Row.Cells.Count))
		{
			TableCell cell = e.Row.Cells[grdAssetsDeleteColumnIndex];
			foreach (Control c in cell.Controls)
			{
				LinkButton btn = c as LinkButton;
				if (btn != null)
				{
					btn.Attributes.Add("onclick", "javascript: return confirm('" + Sage.Platform.WebPortal.PortalUtil.JavaScriptEncode(GetLocalResourceObject("grdAssets.defc4060-3e82-47c5-9811-2eecf8169d64.ConfirmationMessage").ToString()) + "');");
					return;
				}
			}
		}
	}
}
   
protected void grdAssetspage_changing(object sender, GridViewPageEventArgs e)
{
 grdAssets.PageIndex = e.NewPageIndex;
 grdAssets.DataBind();
}
protected void grdAssets_Sorting(object sender, GridViewSortEventArgs e) { }
protected void grdAssets_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dtsAssets.SelectedIndex = rowIndex;
		object currentEntity = dtsAssets.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
		string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
		    if (grdAssets.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdAssets.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dtsAssets.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
		                currentEntity = dtsAssets.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }                 
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdAssets.DataKeys[rowIndex].Values)
            {
                if (val.Key.ToString() != "InstanceId")
                {
                    id = val.Value.ToString();
                }
            }
        }		
		if (e.CommandName.Equals("Delete"))
		{
            Sage.Entity.Interfaces.IContract mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.IContract;
			if (mainentity != null)
			{
			    Sage.Entity.Interfaces.IContractItem childEntity = null;
			    if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.IContractItem))
			    {
			        childEntity = (Sage.Entity.Interfaces.IContractItem)currentEntity;    
			    }
			    else if (id != null)
			    {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.IContractItem>(id);
            }
				if(childEntity != null)
				{
			         mainentity.Items.Remove(childEntity);
					 mainentity.Save();
					 if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
					 {
					     childEntity.Delete();
					 }
					 dtsAssets.SelectedIndex = -1;
			    }
		    }
		}
	}
    grdAssets_refresh();
}
	
	protected void grdAssets_refresh()
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
	
            protected void grdAssets_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		grdAssets.SelectedIndex = -1;
	}
	</script>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="ContractCoveredAssets_RTools" ToolbarLocation="right">
   <SalesLogix:LookupControl runat="server" ID="lueAssociateAsset"  ToolTip="<%$ resources: lueAssociateAsset.ToolTip %>" LookupEntityName="AccountProduct" LookupEntityTypeName="Sage.Entity.Interfaces.IAccountProduct, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="ButtonOnly" SeedProperty="Account" AutoPostBack="true" LookupImageURL="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAssociateAsset.LookupProperties.SerialNumber.PropertyHeader %>" PropertyName="SerialNumber" PropertyType="" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAssociateAsset.LookupProperties.ProductName.PropertyHeader %>" PropertyName="ProductName" PropertyType="" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAssociateAsset.LookupProperties.ActualId.PropertyHeader %>" PropertyName="ActualId" PropertyType="" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>

  <SalesLogix:PageLink ID="lnkContractCoveredAssetsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="contractcoveredassetstab.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.IContract); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dtsAssets;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dtsAssets
{ 
  get 
  {
    if (_dtsAssets == null)
    {
             _dtsAssets = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IContractItem), 
	    EntityType              ,"Items", System.Reflection.MemberTypes.Property);
            	   	}
 	return _dtsAssets;
  }
}

void dtsAssets_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dtsAssets.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dtsAssets);
   }
}

 



 

protected override void OnAddEntityBindings() { 
       dtsAssets.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("Items", grdAssets ));
   dtsAssets.BindFieldNames = new String[] { "Id","Asset.ProductName","Asset.ActualId","Asset.SerialNumber","Asset.Quantity","Asset.Contact.NameLF","Asset.Contact.Id","Asset.Location","Asset.AssetCode","Asset.Returned","Asset.Evaluation" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dtsAssets_OnCurrentEntitySet);
     
                 // lueAssociateAsset.SeedValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueAssociateAssetSeedValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account.Id", lueAssociateAsset, "SeedValue");
        lueAssociateAssetSeedValueBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(lueAssociateAssetSeedValueBinding);
   }
	   
protected void lueAssociateAsset_ChangeAction(object sender, EventArgs e) {
    if (lueAssociateAsset.LookupResultValue != null)
    {
        Sage.Entity.Interfaces.IContract parentEntity = BindingSource.Current as Sage.Entity.Interfaces.IContract;
        Sage.Entity.Interfaces.IAccountProduct relatedEntity = lueAssociateAsset.LookupResultValue as Sage.Entity.Interfaces.IAccountProduct;
        Sage.Platform.WebPortal.EntityPage page = (Sage.Platform.WebPortal.EntityPage)Page;
		// check for duplicates
        bool found = false;
        if ((parentEntity != null) && (relatedEntity != null))
        {
		        Sage.Entity.Interfaces.IContractItem relationshipEntity = Sage.Platform.EntityFactory.Create<Sage.Entity.Interfaces.IContractItem>();
		if (!found)
        {
            relationshipEntity.Contract = parentEntity;
            relationshipEntity.Asset = relatedEntity;
            parentEntity.Items.Add(relationshipEntity);
            dtsAssets.SelectedMember = relationshipEntity;
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
 lueAssociateAsset.LookupResultValueChanged += new EventHandler(lueAssociateAsset_ChangeAction);


}

protected override void OnFormBound()
{
if (dtsAssets.SourceObject == null) { dtsAssets.SourceObject = BindingSource.Current; }
if (dtsAssets.SourceObject == null) { RegisterBindingsWithClient(dtsAssets); }
dtsAssets.Bind();



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
	get { return _formAdapter ?? (_formAdapter = new ContractCoveredAssetsAdapter(this)); }
}

public class ContractCoveredAssetsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IContractCoveredAssets
{
	public ContractCoveredAssetsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.IDataGridControl _grdAssets;
	public Sage.Platform.Controls.IDataGridControl grdAssets
	{
		get { return FindControl(ref _grdAssets, "grdAssets"); }
	}
	private Sage.Platform.Controls.IDataSourceControl _dtsAssets;
	public Sage.Platform.Controls.IDataSourceControl dtsAssets
	{
		get { return FindControl(ref _dtsAssets, "dtsAssets"); }
	}
	private Sage.Platform.Controls.ILookupControl _lueAssociateAsset;
	public Sage.Platform.Controls.ILookupControl lueAssociateAsset
	{
		get { return FindControl(ref _lueAssociateAsset, "lueAssociateAsset"); }
	}

}

</script>

<script type="text/javascript">
</script>
