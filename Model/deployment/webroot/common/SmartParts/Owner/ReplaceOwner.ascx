<%@ Control Language="C#" ClassName="ReplaceOwner" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
<table border="0" cellpadding="1" cellspacing="0" class="formtable">
         <col width="50%" />
            <col width="50%" />
     <tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lueSource_lbl" AssociatedControlID="lueSource" runat="server" Text="<%$ resources: lueSource.Caption %>" ></asp:Label>
 </div>   
  <div  class="textcontrol lookup"  >
<SalesLogix:LookupControl runat="server" ID="lueSource" ButtonToolTip="<%$ resources: lueSource.ButtonToolTip %>" LookupEntityName="Owner" LookupEntityTypeName="Sage.Entity.Interfaces.IOwner, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" AddEmptyListItem="false"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueSource.LookupProperties.OwnerDescription.PropertyHeader %>" PropertyName="OwnerDescription" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueSource.LookupProperties.Type.PropertyHeader %>" PropertyName="Type" PropertyType="Sage.Entity.Interfaces.OwnerType" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>
                 

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lueReplaceWith_lbl" AssociatedControlID="lueReplaceWith" runat="server" Text="<%$ resources: lueReplaceWith.Caption %>" ></asp:Label>
 </div>   
  <div  class="textcontrol lookup"  >
<SalesLogix:LookupControl runat="server" ID="lueReplaceWith" ButtonToolTip="<%$ resources: lueReplaceWith.ButtonToolTip %>" LookupEntityName="Owner" LookupEntityTypeName="Sage.Entity.Interfaces.IOwner, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" AddEmptyListItem="false"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueReplaceWith.LookupProperties.OwnerDescription.PropertyHeader %>" PropertyName="OwnerDescription" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueReplaceWith.LookupProperties.Type.PropertyHeader %>" PropertyName="Type" PropertyType="Sage.Entity.Interfaces.OwnerType" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>
                 

      </td>
      </tr>
<tr>
            <td></td>
                <td  >
<asp:Panel runat="server" ID="ctrlstButtons" CssClass="controlslist qfActionContainer"
>
   <asp:Button runat="server" ID="cmdOK"
 Text="<%$ resources: cmdOK.Caption %>" CssClass="slxbutton"  />
   
   <asp:Button runat="server" ID="cmdCancel"
 Text="<%$ resources: cmdCancel.Caption %>" CssClass="slxbutton"  />
 
</asp:Panel>
      </td>
      </tr>
</table>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="ReplaceOwner_RTools" ToolbarLocation="right">
  <SalesLogix:PageLink ID="lnkReplaceOwnerHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="Removing_or_Replacing_Team_Members" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.IOwner); }
}

 

protected override void OnAddEntityBindings() { 
    
        
        
        
        
     
   
}
	   	   	   	   	   
protected void cmdOK_ClickAction(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("ReplaceOwner.cmdOK_OnClick", methodArgs);
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 cmdOK.Click += new EventHandler(cmdOK_ClickAction);
cmdOK.Click += new EventHandler(DialogService.CloseEventHappened);
cmdOK.Click += new EventHandler(Refresh);
cmdCancel.Click += new EventHandler(DialogService.CloseEventHappened);


}

protected override void OnFormBound()
{
ClientBindingMgr.RegisterBoundControl(lueSource);

ClientBindingMgr.RegisterBoundControl(lueReplaceWith);

ClientBindingMgr.RegisterSaveButton(cmdOK);

ScriptManager.RegisterStartupScript(Page, GetType(), "cleanupcontainer", "jQuery(\".controlslist > div:empty\").remove();", true);
ClientBindingMgr.RegisterDialogCancelButton(cmdCancel);


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
	get { return _formAdapter ?? (_formAdapter = new ReplaceOwnerAdapter(this)); }
}

public class ReplaceOwnerAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IReplaceOwner
{
	public ReplaceOwnerAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.ILookupControl _lueSource;
	public Sage.Platform.Controls.ILookupControl lueSource
	{
		get { return FindControl(ref _lueSource, "lueSource"); }
	}
	private Sage.Platform.Controls.ILookupControl _lueReplaceWith;
	public Sage.Platform.Controls.ILookupControl lueReplaceWith
	{
		get { return FindControl(ref _lueReplaceWith, "lueReplaceWith"); }
	}
	private Sage.Platform.Controls.IControlsListControl _ctrlstButtons;
	public Sage.Platform.Controls.IControlsListControl ctrlstButtons
	{
		get { return FindControl(ref _ctrlstButtons, "ctrlstButtons"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdOK;
	public Sage.Platform.Controls.IButtonControl cmdOK
	{
		get { return FindControl(ref _cmdOK, "cmdOK"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdCancel;
	public Sage.Platform.Controls.IButtonControl cmdCancel
	{
		get { return FindControl(ref _cmdCancel, "cmdCancel"); }
	}

	public void cmdOK_OnClick(System.EventArgs e)
	{
		Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
		Object[] methodArgs = new Object[] { this, e };
		lib.Execute("ReplaceOwner.cmdOK_OnClick", methodArgs);
	}
}

</script>

<script type="text/javascript">
</script>
