<%@ Control Language="C#" ClassName="AddPortalTicket" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
         <col width="100%" />
     <tr>
            <td  >
<div class="dependency">
<SalesLogix:DependencyLookupControl runat="server" ID="dplArea"  LabelCssClass="lbl" ButtonToolTip="<%$ resources: dplArea.ButtonToolTip %>"  >
<LookupResultsHeaderStyle BackColor="ActiveCaption" Font-Bold="True" ForeColor="White" />
<LookupDialogStyle BackColor="ButtonFace" />
<LookupResultsStyle CellPadding="4" ForeColor="Black" />
<DependentLookups>
 <SalesLogix:DependentLookup LookupEntityName="AreaCategoryIssue" LookupEntityTypeName="Sage.Entity.Interfaces.IAreaCategoryIssue, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" DropDownDisplayProperty="Area" ParentProperty="" PropertyDisplay="<%$ resources: dplArea.DependentLookups.Area.PropertyDisplay %>" BindingPropertyName="Area">
  </SalesLogix:DependentLookup>
 <SalesLogix:DependentLookup LookupEntityName="AreaCategoryIssue" LookupEntityTypeName="Sage.Entity.Interfaces.IAreaCategoryIssue, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" DropDownDisplayProperty="Category" ParentProperty="Area" PropertyDisplay="<%$ resources: dplArea.DependentLookups.Category.PropertyDisplay %>" BindingPropertyName="Category">
  </SalesLogix:DependentLookup>
 <SalesLogix:DependentLookup LookupEntityName="AreaCategoryIssue" LookupEntityTypeName="Sage.Entity.Interfaces.IAreaCategoryIssue, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" DropDownDisplayProperty="Issue" ParentProperty="Category" PropertyDisplay="<%$ resources: dplArea.DependentLookups.Issue.PropertyDisplay %>" BindingPropertyName="Issue">
  </SalesLogix:DependentLookup>
  </DependentLookups>
  <LookupPreFilters>
        <SalesLogix:LookupPreFilter PropertyName="Customer" PropertyType="System.Boolean" OperatorCode="="   FilterValue="True"></SalesLogix:LookupPreFilter>
      </LookupPreFilters>
</SalesLogix:DependencyLookupControl>
</div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtSubject_lbl" AssociatedControlID="txtSubject" runat="server" Text="<%$ resources: txtSubject.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtSubject" Rows="1"
 />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lueUrgency_lbl" AssociatedControlID="lueUrgency" runat="server" Text="<%$ resources: lueUrgency.Caption %>" ></asp:Label>
 </div>   
  <div  class="textcontrol lookup"  >
<SalesLogix:LookupControl runat="server" ID="lueUrgency" ButtonToolTip="<%$ resources: lueUrgency.ButtonToolTip %>" LookupEntityName="Urgency" LookupEntityTypeName="Sage.SalesLogix.Entities.Urgency, Sage.SalesLogix.Entities" LookupDisplayMode="DropDownList" AddEmptyListItem="false"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueUrgency.LookupProperties.Description.PropertyHeader %>" PropertyName="Description" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
<SalesLogix:LookupPreFilter PropertyName="AllowWebTicket" PropertyType="System.Boolean" OperatorCode="="
 FilterValue="True"
 ></SalesLogix:LookupPreFilter>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtNotes_lbl" AssociatedControlID="txtNotes" runat="server" Text="<%$ resources: txtNotes.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtNotes" Rows="4"
TextMode="MultiLine" Columns="40"
MultiLineMaxLength="2147483647" onkeyup="doTextBoxKeyUp(this);" onpaste="doTextBoxPaste(this);"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <asp:Button runat="server" ID="cmdSubmit"
 Text="<%$ resources: cmdSubmit.Caption %>" CssClass="slxbutton"  />
   
      </td>
      </tr>
</table>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="AddPortalTicket_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="cmdSave"
 AlternateText="<%$ resources: cmdSave.Caption %>"  ToolTip="<%$ resources: cmdSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
  <SalesLogix:PageLink ID="lnkAddPortalTicketHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="custaddticket.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.ITicket); }
}

 

protected override void OnAddEntityBindings() { 
   BindingSource.AddBindingProvider(dplArea as Sage.Platform.EntityBinding.IEntityBindingProvider);
                    // dplArea.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dplAreaTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Area", dplArea, "Text");
        BindingSource.Bindings.Add(dplAreaTextBinding);
                       // txtSubject.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtSubjectTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Subject", txtSubject, "Text");
        BindingSource.Bindings.Add(txtSubjectTextBinding);
                       // lueUrgency.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueUrgencyLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Urgency", lueUrgency, "LookupResultValue");
        BindingSource.Bindings.Add(lueUrgencyLookupResultValueBinding);
                       // txtNotes.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtNotesTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("TicketProblem.Notes", txtNotes, "Text");
        BindingSource.Bindings.Add(txtNotesTextBinding);
       
     
   
    }
	   	   	   	   	   
protected void cmdSubmit_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.ITicket _entity = BindingSource.Current as Sage.Entity.Interfaces.ITicket;
  if (_entity != null) 
  {
    object _parent = GetParentEntity(); 
    if (DialogService.ChildInsertInfo != null) 
    {
      if (_parent != null) 
      {
        if (DialogService.ChildInsertInfo.ParentReferenceProperty != null) 
        {
          DialogService.ChildInsertInfo.ParentReferenceProperty.SetValue(_entity, _parent, null);
        }        
      }
    }
    bool shouldSave = true;
    Sage.Platform.WebPortal.EntityPage page = Page as Sage.Platform.WebPortal.EntityPage;
	if (page != null)
	{
       if(IsInDialog() && page.ModeId.ToUpper() == "INSERT")
       {
         shouldSave = false;
       }
	}

    if(shouldSave)
    {
       _entity.Save();
    }
    
    if (_parent != null)
    {
        if (DialogService.ChildInsertInfo != null)
        {
           if (DialogService.ChildInsertInfo.ParentsCollectionProperty != null) 
           {
              System.Reflection.MethodInfo _add = DialogService.ChildInsertInfo.ParentsCollectionProperty.PropertyType.GetMethod("Add");
              _add.Invoke(DialogService.ChildInsertInfo.ParentsCollectionProperty.GetValue(_parent, null), new object[] { _entity });
           }
        }
     }        
  }
          cmdSubmit_ClickActionBRC(sender, e);
    
  
}
protected void cmdSubmit_ClickActionBRC(object sender, EventArgs e) {
      Response.Redirect(string.Format("Ticket.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
}
protected void cmdSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.ITicket _entity = BindingSource.Current as Sage.Entity.Interfaces.ITicket;
  if (_entity != null) 
  {
    object _parent = GetParentEntity(); 
    if (DialogService.ChildInsertInfo != null) 
    {
      if (_parent != null) 
      {
        if (DialogService.ChildInsertInfo.ParentReferenceProperty != null) 
        {
          DialogService.ChildInsertInfo.ParentReferenceProperty.SetValue(_entity, _parent, null);
        }        
      }
    }
    bool shouldSave = true;
    Sage.Platform.WebPortal.EntityPage page = Page as Sage.Platform.WebPortal.EntityPage;
	if (page != null)
	{
       if(IsInDialog() && page.ModeId.ToUpper() == "INSERT")
       {
         shouldSave = false;
       }
	}

    if(shouldSave)
    {
       _entity.Save();
    }
    
    if (_parent != null)
    {
        if (DialogService.ChildInsertInfo != null)
        {
           if (DialogService.ChildInsertInfo.ParentsCollectionProperty != null) 
           {
              System.Reflection.MethodInfo _add = DialogService.ChildInsertInfo.ParentsCollectionProperty.PropertyType.GetMethod("Add");
              _add.Invoke(DialogService.ChildInsertInfo.ParentsCollectionProperty.GetValue(_parent, null), new object[] { _entity });
           }
        }
     }        
  }
          cmdSave_ClickActionBRC(sender, e);
    
  
}
protected void cmdSave_ClickActionBRC(object sender, EventArgs e) {
      Response.Redirect(string.Format("Ticket.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 cmdSubmit.Click += new EventHandler(cmdSubmit_ClickAction);
cmdSave.Click += new ImageClickEventHandler(cmdSave_ClickAction);


}

protected override void OnFormBound()
{
ClientBindingMgr.RegisterSaveButton(cmdSubmit);

ClientBindingMgr.RegisterSaveButton(cmdSave);



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
	
	tinfo.ImagePath = Page.ResolveClientUrl("~/ImageResource.axd?scope=global&type=Global_Images&key=New_Ticket_24x24");	return tinfo;
}

private Sage.Platform.Controls.IEntityForm _formAdapter;

public Sage.Platform.Controls.IEntityForm FormAdapter
{
	get { return _formAdapter ?? (_formAdapter = new AddPortalTicketAdapter(this)); }
}

public class AddPortalTicketAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAddPortalTicket
{
	public AddPortalTicketAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.IDependencyLookupControl _dplArea;
	public Sage.Platform.Controls.IDependencyLookupControl dplArea
	{
		get { return FindControl(ref _dplArea, "dplArea"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtSubject;
	public Sage.Platform.Controls.ITextBoxControl txtSubject
	{
		get { return FindControl(ref _txtSubject, "txtSubject"); }
	}
	private Sage.Platform.Controls.ILookupControl _lueUrgency;
	public Sage.Platform.Controls.ILookupControl lueUrgency
	{
		get { return FindControl(ref _lueUrgency, "lueUrgency"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtNotes;
	public Sage.Platform.Controls.ITextBoxControl txtNotes
	{
		get { return FindControl(ref _txtNotes, "txtNotes"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdSubmit;
	public Sage.Platform.Controls.IButtonControl cmdSubmit
	{
		get { return FindControl(ref _cmdSubmit, "cmdSubmit"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdSave;
	public Sage.Platform.Controls.IButtonControl cmdSave
	{
		get { return FindControl(ref _cmdSave, "cmdSave"); }
	}

}

</script>

<script type="text/javascript">
</script>
