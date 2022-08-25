<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar.aspx.cs" Inherits="WineSV.registrar" %>


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

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css24/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">
    <form runat="server">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <img class="col-lg-5"" src="img/vino4.jpg"> 
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Crea una cuenta</h1>
                            </div>
                            <form class="user">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <%--<input type="text" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="First Name">--%>
                                        <asp:TextBox ID="Username" onpaste="return false" minlength="5" maxlength="15" class="form-control form-control-user" placeholder="Nombre de Usuario" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                        <%--<input type="text" class="form-control form-control-user" id="exampleLastName"
                                            placeholder="Last Name">--%>
                                        <asp:TextBox ID="Password" onpaste="return false" minlength="2" maxlength="15" placeholder="Contraseña" class="form-control form-control-user" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                   <%-- <input type="email" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="Email Address">--%>
                                    <asp:TextBox ID="ConfirmPassword" class="form-control form-control-user" placeholder="Comfirmar contraseña" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <%--<input type="password" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="Password">--%>
                                        <asp:TextBox ID="Txtcorreo" TextMode="Email" onpaste="return false" minlength="5" maxlength="30" class="form-control form-control-user" placeholder="Correo electronico" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                        <%--<input type="password" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="Repeat Password">--%>
                                        <asp:TextBox ID="Txtnombre" onpaste="return false"  minlength="1" maxlength="30"  onkeypress="return validar(event)" placeholder="Nombre" class="form-control form-control-user" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="form-group">
                                   <%-- <input type="email" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="Email Address">--%>
                                    <asp:TextBox ID="Txtapellido" onpaste="return false"  minlength="4" maxlength="30" onkeypress="return validar(event)" class="form-control form-control-user" placeholder="Apellido" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                   <%-- <input type="email" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="Email Address">--%>
                                    <asp:Label ID="Label2" runat="server" Text="Ingresa tu fecha de nacimiento"></asp:Label>
                                    <asp:TextBox ID="Txtnacimiento" class="form-control form-control-user" placeholder="Apellido" TextMode="Date" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                   <%-- <input type="email" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="Email Address">--%>
                                    <asp:Label ID="Label1" runat="server" Text="Selecciona tu genero"></asp:Label>
                                    <asp:DropDownList ID="Dropgenero" class="form-control form-control-user" runat="server">
                                         <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                              <%--  <a href="login.html" class="btn btn-primary btn-user btn-block">
                                    Register Account
                                </a>--%>
                                <asp:Button ID="Button1" class="btn btn-primary btn-user btn-block" runat="server" Text="Registrar" OnClick="SignUp_Click" />
                                <hr>


                               <%-- <a href="index.html" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a>--%>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="recu.aspx">olvidaste tu contraseña?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="login.aspx">Ya cuentas con una cuenta? Inicia sesion por aca!</a>
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

        </form>
</body>

</html>