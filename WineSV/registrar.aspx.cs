using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WineSV
{
    public partial class registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                bool logged_in = Convert.ToBoolean(Session["logged_in"]);
                if (logged_in)
                    Response.Redirect("index");

            }
            catch (Exception ex)
            {
                Response.Redirect("index");
            }
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            if (Username.Text.Trim() != "" && Password.Text.Trim() != "" && ConfirmPassword.Text.Trim() != "" && Txtcorreo.Text.Trim() != "" && Txtnombre.Text.Trim() != "" && Txtapellido.Text.Trim() != "")
            {
                string username = Username.Text.Trim();
                string pwd = Password.Text.Trim();
                string confirmPwd = ConfirmPassword.Text.Trim();
                string correo = Txtcorreo.Text.Trim();
                string nombre = Txtnombre.Text.Trim();
                string apellido = Txtapellido.Text.Trim();
                string nacimiento = Txtnacimiento.Text.Trim();
                string genero = Dropgenero.Text.Trim();

                int registrado = metodos.Sign_Up(username, pwd, confirmPwd, correo, nombre, apellido, nacimiento, genero);

                if (registrado != 0)
                {
                    Username.Text = "";
                    Password.Text = "";
                    ConfirmPassword.Text = "";
                    Txtcorreo.Text = "";
                    Txtnombre.Text = "";
                    Txtapellido.Text = "";
                    Txtnacimiento.Text = "";

                    alertas.Text = "<script>Swal.fire('Registrado con éxito', '¡Gracias por preferirnos!', 'success'); </script>";


                    Response.Redirect("login.aspx");
                }
                else
                {


                    alertas.Text = "<script>Swal.fire('Upss al parecer hubo un error al registrase, 'Repita sus datos y no deje espacios en blanco.', 'error');</script>";

                }



            }
            else {

                alertas.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";

            }

           
        }

       
    }
}