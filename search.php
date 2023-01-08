<?php
  include 'db_connection/connection.php';
   session_start();
?>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style> 

.row {
    display: flex;
    width : 90vw;
}
.header {
    font-weight : bold;
}

.row > span {
    padding : 10px;
    border : 1px white;
    width : 25%;
}

</style>


<?php
   
  include 'nav_menu.php';
?>

<script type="text/javascript">
    function search(){
        let key = document.getElementById("search-key").value;
        console.log(key);

        fetch('/artgallery/search_user.php?key='+key)
			.then(response => response.json())
			.then(json=> {
                document.getElementById("results").innerHTML = " <div class='header row'> <span>ID</span> <span>Name</span> <span>Email</span> <span>Phone No</span> </div>";
                json.forEach((row)=>{
                    console.log(row);
                    document.getElementById("results").innerHTML+= ("<div class='row'> <span>"+row[0]+" </span> <span> "+row[1]+"</span> <span>"+row[2]+" </span> <span> "+row[4]+"</span> </div>");
                });

                // document.getElementById("results").innerHTML+= "</table>";
			})
    }

			
</script>

<input type="text" name="search-key" id="search-key">
<input type="button" value="Search" onclick="search()">

<div id="results">

</div>

</html> 