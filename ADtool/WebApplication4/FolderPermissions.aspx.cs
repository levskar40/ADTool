using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Management.Automation;
using System.Management;
using System.Collections;

namespace WebApplication4
{
    public partial class FolderPermissions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
             protected void Button1_Click(object sender, EventArgs e)
        {
            var Server = ServerName.Text.ToString();
            string script = @"(Get-ChildItem -path \\" + Server + @"\groups | Where {$_.PsIsContainer} | select name).name";
            var powerShell = PowerShell.Create();
            powerShell.AddScript(script);
            var results = powerShell.Invoke();
            CheckBoxList.DataSource = results;
            CheckBoxList.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

           var selected = "";
           for (int i = 0; i < CheckBoxList.Items.Count; i++)
          {
          if (CheckBoxList.Items[i].Selected)
           {
           selected += CheckBoxList.Items[i].Value + ", "; 
          }

          }
           var folders = selected.Remove(selected.Length - 2);
            
            var SCRIPT_PATH = @"C:\Users\adm-bgsslvv.EUA\Desktop\MyScripts\DR\FolderPermissions\Add.ps1";
            Process _Proc = new Process();
            _Proc.StartInfo.FileName = "Powershell.exe";
             _Proc.StartInfo.WindowStyle = ProcessWindowStyle.Hidden    ;
            _Proc.StartInfo.Arguments = @"" + SCRIPT_PATH + " " + Account.Text + " " + Access.Text + " -GroupDirectories " + folders;
            _Proc.Start();
            _Proc.WaitForExit();    
            _Proc.Close();
        }
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            var selected = "";
            for (int i = 0; i < CheckBoxList.Items.Count; i++)
            {
                if (CheckBoxList.Items[i].Selected)
                {
                    selected += CheckBoxList.Items[i].Value + ", ";
                }

            }
            var folders = selected.Remove(selected.Length - 2);

            var SCRIPT_PATH = @"C:\Users\adm-bgsslvv.EUA\Desktop\MyScripts\DR\FolderPermissions\Remove.ps1";
            Process _Proc = new Process();
            _Proc.StartInfo.FileName = "Powershell.exe";
            _Proc.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
            _Proc.StartInfo.Arguments = @"" + SCRIPT_PATH + " " + Account.Text + " " + Access.Text + " -GroupDirectories " + folders;
            _Proc.Start();
            _Proc.WaitForExit();
            _Proc.Close();
        }
}
}