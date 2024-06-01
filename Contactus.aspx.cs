using ClosedXML.Excel;
using DocumentFormat.OpenXml.Math;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contactus : System.Web.UI.Page
{
    protected void btnsubmit_click(object sender, EventArgs e)
    {
        try
        {
            contactdata cs = new contactdata();
            cs.fname = txtname.Text;
            cs.lname = txtlastname.Text;
            cs.email = txtemail.Text;
            cs.subject = txtsubject.Text;
            cs.message = txtmassage.Text;

            cs.Save();
            string message = "Your details have been saved successfully..";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "');";
            script += "window.location = '";
            script += Request.Url.AbsoluteUri;
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        }
        catch
        {
            Exception ex;
        }

    }
}




     
        

