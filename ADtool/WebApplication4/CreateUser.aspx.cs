using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Management.Automation;

namespace WebApplication4
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }

       
           public void btnSubmit_Click(object sender, EventArgs e)
        {
            var SCRIPT_PATH = @"C:\Users\adm-bgsslvv.EUA\Desktop\MyScripts\DR\Users\Add.ps1";
            Process _Proc = new Process();
            _Proc.StartInfo.FileName = "Powershell.exe";
            _Proc.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
            _Proc.StartInfo.Arguments = @"" + SCRIPT_PATH + " " + Username.Text + " " + Password.Text + " " + Country.Text + " " + Site.Text + " " + Phone.Text + " " + Email.Text + " " + "'" + FullName.Text.ToString() +"'";
            _Proc.Start();
            _Proc.WaitForExit();
            _Proc.Close();
        }

           protected void btnRemove_Click(object sender, EventArgs e)
           {
               var SCRIPT_PATH = @"C:\Users\adm-bgsslvv.EUA\Desktop\MyScripts\DR\Users\Delete.ps1";
               Process _Proc = new Process();
               _Proc.StartInfo.FileName = "Powershell.exe";
               _Proc.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
               _Proc.StartInfo.Arguments = @"" + SCRIPT_PATH + " " + Username.Text;
               _Proc.Start();
               _Proc.WaitForExit();
               _Proc.Close();
           }
}
}