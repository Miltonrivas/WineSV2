<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recu.aspx.cs" Inherits="WineSV.recu" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
     <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>

    <title>SB Admin 2 - Forgot Password</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css24/sb-admin-2.min.css" rel="stylesheet">

</head>
   
<body class="bg-gradient-primary">
   
    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <img src="img/vino2.jpg" class="col-lg-6">
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">Forgot Your Password?</h1>
                                        <p class="mb-4">We get it, stuff happens. Just enter your email address below
                                            and we'll send you a link to reset your password!</p>
                                    </div>
                                   
                                          <form runat ="server">
                                        <div class="form-group">
                                           <%-- <input type="email" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Enter Email Address...">--%>
                                            <asp:TextBox ID="txtcuenta" class="form-control form-control-user" placeholder="Nombre de Usuario" runat="server"></asp:TextBox>
                                        </div>
<%--                                        <a href="login.html" class="btn btn-primary btn-user btn-block">
                                            Reset Password
                                        </a>--%>
                                              <asp:Button ID="Button1" class="btn btn-primary btn-user btn-block" runat="server" Text="Recuperar contraseña" OnClick="Unnamed1_Click" />
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="registrar.aspx">¡Crea una cuenta nueva aca!</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="login.aspx">¡Ya tienes cuenta, Inicia aca!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <asp:Literal ID="alertas" runat="server" Text=""></asp:Literal>

</body>

</html>