<style>
body {font-family: Arial, Helvetica, sans-serif;
  background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url(bg.jpg);
    background-position: center;
    background-size: cover;}

.navbar {
  width: 100%;
  background-color: #161009;
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 12px;
  color: rgb(212, 74, 14);
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background-color: #f0e9e9;
}

.active {
  background-color: #d9780a;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
  }
}
</style>

<div class="navbar">


  <?php if($_SESSION['usertype'] == 'painter') { ?>
	  <a href="productlist.php"><i class="fa fa-fw fa-PRODUCTS"></i> CANDIDATE LIST </a>
    <a href="createproduct.php"><i class="fa fa-fw fa-PRODUCTS"></i> CREATE CANDIDATE </a>
	  <a href="bidproductlist.php"><i class="fa fa-fw fa-PRODUCT FOR BIDDING"></i>CANDIDATES FOR VOTING </a> 
  <?php } ?>

 	<a href="bidding_board.php"><i class="fa fa-fw fa-GO FOR BIDDING"></i>VOTING BOARD </a> 
  	<a id="logoutbtn"><i class="fa fa-fw fa-PRODUCT FOR BIDDING"></i>LOG OUT</a>

</div>

<script>
    var elm=document.getElementById('logoutbtn');
    elm.addEventListener('click', processlogout);
    
    function processlogout(){
        window.location.assign('logoutprocess.php');
    }
    
</script>