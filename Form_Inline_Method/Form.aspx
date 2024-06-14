<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Form_Inline_Method.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forum</title>
    <%--Bootstrap--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.rtl.min.css" integrity="sha384-dpuaG1suU0eT09tx5plTaGMLBsfDLzUCCUXOY2j/LSvXYuG6Bqs43ALlhIqAJVRb" crossorigin="anonymous" />
    <%--CSS--%>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            background: rgb(32,32,32);
            background: radial-gradient(circle, rgba(32,32,32,1) 41%, rgba(0,0,0,0.947391456582633) 53%);
        }

        #master-container {
            height: 39.5rem;
        }

        #Hero {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding-top: 8rem;
            padding-bottom: 7rem;
        }

        #bt {
            margin-left: 39.2rem;
        }

        #bt1 {
            margin-left: 20rem;
        }
    </style>
</head>
<body>
    <div id="master-container">
        <%--Navbar--%>
        <nav class="navbar navbar-expand-lg" id="Container">
            <div class="container-fluid w-75">
                <a class="navbar-brand text-light fw-bold" href="#">Smasher</a>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                        <li class="nav-item">
                            <a class="nav-link fw-bold text-light active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link  text-light" href="Records.aspx">Records</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <%--Hero--%>
        <main role="main" class="inner cover w-100">
            <div class=" text-center text-centerc" id="Hero">
                <h1 class="cover-heading text-light w-50 fw-bold">Welcome to portal</h1>
                <p class="lead text-light w-50">
                    Welcome to the Uni Student Portal! Your one-stop destination for all things academic and campus-related. Access grades, schedules, and connect with fellow students easily. We're here to support your journey to success at Uni. Dive in and explore!
                Welcome aboard, and let the Uni Student Portal be your guide to success!
                </p>
                <p class="lead w-50">
                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg">Sign Up</button>
                </p>
            </div>
            <%--Modal--%>
            <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg bg-light">
                    <div class="modal-content bg-light">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                            <button type="button" id="bt" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class=" container">
                            <form runat="server">
                                <div class="form-row">
                                    <div class="col w-50 float-end">
                                        <label for="First-name bg-light" class="col-form-label">First Name:</label>
                                        <input id="fname" runat="server" type="text" class="form-control" placeholder="First name" />
                                    </div>
                                    <div class="col w-50 float-start">
                                        <label for="Last-name bg-light" class="col-form-label">Last Name:</label>
                                        <input id="lname" runat="server" type="text" class="form-control" placeholder="Last name" />
                                    </div>
                                </div>
                                <div class="form-group w-50 col-md-4 float-end">
                                    <label for="inputState">Gender</label>
                                    <select id="inputState" runat="server" class="form-control">
                                        <option selected="selected">Choose...</option>
                                        <option>Male</option>
                                        <option>Female</option>
                                    </select>
                                </div>
                                <div class="form-group w-50 col-md-5 float-start">
                                    <label for="inputState">Courses</label>
                                    <select id="inputState1" runat="server" class="form-control">
                                        <option selected="selected">Choose...</option>
                                        <option>CMA</option>
                                        <option>BSCS</option>
                                    </select>
                                </div>
                                <div class="col w-50">
                                    <label for="Age">Age:</label><br />
                                    <input id="age" runat="server" type="number" class="form-control" name="Age" min="20" />
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <asp:Button class="btn btn-primary" runat="server" OnClick="btn_ClickSave" Text="Submit" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <%--footer--%>
        <footer class="mastfoot">
            <div class="inner text-light text-center">
                <span>All Rights Reserved</span>
            </div>
        </footer>
    </div>
    <%--Script--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
