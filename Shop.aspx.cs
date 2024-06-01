using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shop : System.Web.UI.Page
{
    protected void btnsubmit_click(object sender, EventArgs e)
    {
        try
        {
            shopData cs = new shopData();
            cs.fname = Textname.Text;
            cs.lname = Textlastname.Text;
            cs.email = Textemail.Text;
            cs.phone = Textphone.Text;
            cs.state = Textstate.Text;
            cs.city = Textcity.Text;
            cs.address = TextAddress.Text;
            cs.zip = TextZip.Text;


            cs.Save();
           string message = "placed order.";
        string script = "window.onload = function(){ alert('";
        script += message;
        script += "');";
        script += "window.location = '";
        script += Request.Url.AbsoluteUri;
        script += "'; }";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        }
        catch { Exception ex;}

    }
}