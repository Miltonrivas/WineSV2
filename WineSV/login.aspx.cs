using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace WineSV
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                bool logged_in = Convert.ToBoolean(Session["logged_in"]);
                bool isAdmin = Convert.ToBoolean(Session["isAdmin"]);
                if (logged_in)
                {
                    if (isAdmin)
                        Response.Redirect("admin.aspx");
                    Response.Redirect("index.aspx");
                }

            }
            catch (Exception ex)
            {
                Response.Redirect("index.aspx");
            }
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            if (Username.Text.Trim() != "" && Password.Text.Trim() != "") {

                string username = Username.Text.Trim();
                string password = Password.Text.Trim();


                int login = metodos.login(username, password);
                int isAdmin = metodos.Check_Admin(username);

                if (login != 0)
                {
                    Session["logged_in"] = true;
                    Session["username"] = username;
                    Session["userID"] = login;
                    Session["addedToCart"] = false;
                    metodos.SetCartId();
                    if (isAdmin == 1)
                    {
                        Session["isAdmin"] = true;
                        Response.Redirect("admin.aspx");
                    }

                    Session["isAdmin"] = false;
                    Response.Redirect("index.aspx");
                }
                alertas.Text = "<script>Swal.fire('Contraseña o Usuario incorrecto', 'Repita sus datos, por favor.', 'error');</script>";


            }
            else {

                alertas.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";


            }
            

        }
    }
}