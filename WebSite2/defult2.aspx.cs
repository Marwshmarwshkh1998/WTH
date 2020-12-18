using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class defult2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ViewState["NameOfUser"] != null)
            NameLabel.Text = ViewState["NameOfUser"].ToString();
        else
            NameLabel.Text = "Not set yet...";

        if (Session["BackgroundColor"] != null)
        {
            BodyTag.Style["background-color"] = Session["BackgroundColor"].ToString();
        }
        if (Request.Cookies["BackgroundColor1"] != null)
        {
            Button3.Style["background-color"] = DropDownList1.SelectedValue;
        }
        TextBox4.Value = DateTime.Now.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CheckBox1.Checked=true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx?firstname=" + TextBox1.Text + "&lastname=" + TextBox2.Text);
    }
    protected void SubmitForm_Click(object sender, EventArgs e)
    {
        ViewState["NameOfUser"] = NameField.Text;
        NameLabel.Text = NameField.Text;
    }
    protected void SubmitForm_Click1(object sender, EventArgs e)
    {
        Application["WebStoreName"] = TextBox3.Text;
        Label1.Text = TextBox3.Text;
    }

    protected void ColorSelector_IndexChanged(object sender, EventArgs e)
    {
        BodyTag.Style["background-color"] = ColorSelector.SelectedValue;
        Session["BackgroundColor"] = ColorSelector.SelectedValue;

       
    }
    protected void ColorSelector1_IndexChanged(object sender, EventArgs e)
    {
        Button3.Style["background-color"] = DropDownList1.SelectedValue;
        HttpCookie cookie = new HttpCookie("BackgroundColor1");
        cookie.Value = DropDownList1.SelectedValue;
        cookie.Expires = DateTime.Now.AddHours(1);
        Response.SetCookie(cookie);
    }
    protected void btn6(object sender, EventArgs e)
    {
        Label2.Text = TextBox4.Value;
    }
    
}