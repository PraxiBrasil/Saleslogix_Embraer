<%@ Control Language="C#" ClassName="AddEditDefectRate" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
 <div class=" lbl alignleft" >
   <asp:Label ID="txtType_lbl" AssociatedControlID="txtType" runat="server" Text="<%$ resources: txtType.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtType" Rows="1"
 />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtDescription_lbl" AssociatedControlID="txtDescription" runat="server" Text="<%$ resources: txtDescription.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtDescription" Rows="1"
 />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtAmount_lbl" AssociatedControlID="txtAmount" runat="server" Text="<%$ resources: txtAmount.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtAmount" Rows="1"
 />
  </div>

      </td>
      </tr>
</table>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="AddEditDefectRate_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="cmdHelp"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"  />
 
  <SalesLogix:PageLink ID="lnkAddEditDefectRateHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="defectactivityrates.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.IDefectActivityRate); }
}

 

protected override void OnAddEntityBindings() { 
                    // txtType.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtTypeTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("RateTypeCode", txtType, "Text");
        BindingSource.Bindings.Add(txtTypeTextBinding);
                       // txtDescription.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtDescriptionTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("RateTypeDescription", txtDescription, "Text");
        BindingSource.Bindings.Add(txtDescriptionTextBinding);
                       // txtAmount.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtAmountTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("RateAmount", txtAmount, "Text");
        BindingSource.Bindings.Add(txtAmountTextBinding);
    
   
    }
	   	   	   

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 
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
	get { return _formAdapter ?? (_formAdapter = new AddEditDefectRateAdapter(this)); }
}

public class AddEditDefectRateAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAddEditDefectRate
{
	public AddEditDefectRateAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.ITextBoxControl _txtType;
	public Sage.Platform.Controls.ITextBoxControl txtType
	{
		get { return FindControl(ref _txtType, "txtType"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtDescription;
	public Sage.Platform.Controls.ITextBoxControl txtDescription
	{
		get { return FindControl(ref _txtDescription, "txtDescription"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtAmount;
	public Sage.Platform.Controls.ITextBoxControl txtAmount
	{
		get { return FindControl(ref _txtAmount, "txtAmount"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdHelp;
	public Sage.Platform.Controls.IButtonControl cmdHelp
	{
		get { return FindControl(ref _cmdHelp, "cmdHelp"); }
	}

}

</script>

<script type="text/javascript">
</script>
