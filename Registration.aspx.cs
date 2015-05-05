using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //instantiate classes
        ShowTrackerEntities ste = new ShowTrackerEntities();
        SeedCode s = new SeedCode();
        int seed = s.GetSeedCode();
        PasswordHash phash = new PasswordHash();

        try //try the code for errors
        {
            //get the hashed password
            byte[] pass = phash.HashIt(txtPassword.Text, seed.ToString());

            //assign the values to the fields of the Fan class
            Fan fan = new Fan();
            fan.FanName = txtName.Text;
            fan.FanEmail = txtEmail.Text;
            fan.FanDateEntered = DateTime.Now;
            
            //assign the values to the fields of the FanLogin class
            FanLogin fanLogin = new FanLogin();
            fanLogin.Fan = fan;
            fanLogin.FanLoginUserName = txtUserName.Text;
            fanLogin.FanLoginPasswordPlain = txtPassword.Text;
            fanLogin.FanLoginHashed = pass;
            fanLogin.FanLoginRandom = seed;
            fanLogin.FanLoginDateAdded = DateTime.Now;
            
            //save changes
            ste.Fans.Add(fan);
            ste.FanLogins.Add(fanLogin);
            ste.SaveChanges();
            lblResult.Text ="Your are successfully registered!";
        }
        catch (Exception ex)
        {
            lblResult.Text = ex.Message;
        }
    }

}