<%@ Control Language="C#" ClassName="RescheduleActivity" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
            <td  colspan="2" >
 <div class="twocollbl alignleft">
   <asp:Label ID="StartDate_lbl" AssociatedControlID="StartDate" runat="server" Text="<%$ resources: StartDate.Caption %>" ></asp:Label>
 </div>
   <div  class="twocoltextcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="StartDate" />
  </div>

      </td>
            </tr>
<tr>
            <td  colspan="2" >
<div class="slxlabel  alignleft checkbox">
  <SalesLogix:SLXCheckBox runat="server" ID="Timeless" CssClass="checkbox "
 Text="<%$ resources: Timeless.Caption %>" TextAlign="left" AutoPostBack="true"  />
</div>
      </td>
            </tr>
<tr>
            <td  colspan="2" >
 <asp:Button runat="server" ID="Ok"
 Text="<%$ resources: Ok.Caption %>"  />
   
      </td>
            </tr>
</table>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="RescheduleActivity_RTools" ToolbarLocation="right">
  <SalesLogix:PageLink ID="lnkRescheduleActivityHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="rescheduleactivity.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.IActivity); }
}

 

protected override void OnAddEntityBindings() { 
                    // StartDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding StartDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("StartDate", StartDate, "DateTimeValue");
        BindingSource.Bindings.Add(StartDateDateTimeValueBinding);
                 // StartDate.DisplayTime Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding StartDateDisplayTimeBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("!Timeless", StartDate, "DisplayTime");
        StartDateDisplayTimeBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(StartDateDisplayTimeBinding);
                 // StartDate.Timeless Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding StartDateTimelessBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Timeless", StartDate, "Timeless");
        StartDateTimelessBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(StartDateTimelessBinding);
                       // Timeless.Checked Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding TimelessCheckedBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Timeless", Timeless, "Checked");
        BindingSource.Bindings.Add(TimelessCheckedBinding);
       
     
   
}
	   	   	   
protected void Timeless_ChangeAction(object sender, EventArgs e) {

}
protected void Ok_ClickAction(object sender, EventArgs e) {
        Sage.Platform.Orm.Interfaces.IPersistentEntity persistentEntity = this.BindingSource.Current as Sage.Platform.Orm.Interfaces.IPersistentEntity;
        if (persistentEntity != null)
        {
            Sage.SalesLogix.Security.SLXUserService slxUserService = Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.Platform.Security.IUserService>() as Sage.SalesLogix.Security.SLXUserService;
            string userId = slxUserService.GetUser().Id.ToString();
            Sage.SalesLogix.Activity.Activity act = (persistentEntity as Sage.SalesLogix.Activity.Activity);
            Sage.SalesLogix.Activity.UserActivity ua = act.Attendees.FindAttendee(userId);
            ua.AlarmTime = act.StartDate.Subtract(new TimeSpan(0, 15, 0));
            act.Save();
        }
        if (Page.Request.QueryString.Get("mode") == "batch")
        {
            string id = Page.Request.QueryString.Get("entityid");
            Sage.Platform.Application.IContextService context = Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.Platform.Application.IContextService>();
            System.Collections.Generic.List<string> ids = (System.Collections.Generic.List<string>)context.GetContext("RescheduleActivityIds");
            if (ids.Contains(id))
            {
                ids.Remove(id);
                if (ids.Count > 0)
                {
                    Response.Redirect(string.Format("RescheduleActivity.aspx?entityid={0}&mode=batch", ids[0]));
                }
            }
        }
        Response.Redirect("ActivityReminders.aspx");

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 Timeless.CheckedChanged += new EventHandler(Timeless_ChangeAction);
Ok.Click += new EventHandler(Ok_ClickAction);


}

protected void quickformload0(object sender, EventArgs e) {
	Sage.SalesLogix.Activity.Activity activity = (Sage.SalesLogix.Activity.Activity) this.BindingSource.Current;

    string reschedule = GetLocalResourceObject("Reschedule") + " {0}";
	string text = string.Format(reschedule, activity);
	((Sage.Platform.WebPortal.EntityPage) Page).TitleBar.Text = text;

}
private bool _runActivating;
protected override void OnActivating()
{
_runActivating = true;
}
private void DoActivating()
{
quickformload0(this, EventArgs.Empty);

}
protected override void OnFormBound()
{
Sage.Platform.WebPortal.EntityPage epage = Page as Sage.Platform.WebPortal.EntityPage;
        if (epage != null)
            _runActivating = (epage.IsNewEntity || _runActivating);
if (_runActivating) DoActivating();
ClientBindingMgr.RegisterSaveButton(Ok);



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
	get { return _formAdapter ?? (_formAdapter = new RescheduleActivityAdapter(this)); }
}

public class RescheduleActivityAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IRescheduleActivity
{
	public RescheduleActivityAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.IDateTimePickerControl _StartDate;
	public Sage.Platform.Controls.IDateTimePickerControl StartDate
	{
		get { return FindControl(ref _StartDate, "StartDate"); }
	}
	private Sage.Platform.Controls.ICheckBoxControl _Timeless;
	public Sage.Platform.Controls.ICheckBoxControl Timeless
	{
		get { return FindControl(ref _Timeless, "Timeless"); }
	}
	private Sage.Platform.Controls.IButtonControl _Ok;
	public Sage.Platform.Controls.IButtonControl Ok
	{
		get { return FindControl(ref _Ok, "Ok"); }
	}

}

</script>

<script type="text/javascript">
</script>
