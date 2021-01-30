<?php

$active = 'Home';
include("includes/header.php");

?>

<div class="container" id="slider">
    <!-- container Begin -->

    <div class="col-md-12">
        <!-- col-md-12 Begin -->

        <div class="carousel slide" id="myCarousel" data-ride="carousel">
            <!-- carousel slide Begin -->

            <ol class="carousel-indicators">
                <!-- carousel-indicators Begin -->

                <li class="active" data-target="#myCarousel" data-slide-to="0"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>

            </ol><!-- carousel-indicators Finish -->

            <div class="carousel-inner">
                <!-- carousel-inner Begin -->

                <?php

                $get_slides = "select * from slider LIMIT 0,1";

                $run_slides = mysqli_query($con, $get_slides);

                while ($row_slides = mysqli_fetch_array($run_slides)) {

                    $slide_name = urldecode($row_slides['slide_name']);
                    $slide_image = urldecode($row_slides['slide_image']);

                    echo "
                       
                       <div class='item active'>
                       
                       <img src='admin_area/slides_images/$slide_image'>
                       
                       </div>
                       
                       ";
                }

                $get_slides = "select * from slider LIMIT 1,3";

                $run_slides = mysqli_query($con, $get_slides);

                while ($row_slides = mysqli_fetch_array($run_slides)) {

                    $slide_name = urldecode($row_slides['slide_name']);
                    $slide_image = urldecode($row_slides['slide_image']);

                    echo "
                       
                       <div class='item'>
                       
                       <img src='admin_area/slides_images/$slide_image'>
                       
                       </div>
                       
                       ";
                }

                ?>

            </div><!-- carousel-inner Finish -->

            <a href="#myCarousel" class="left carousel-control" data-slide="prev">
                <!-- left carousel-control Begin -->

                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>

            </a><!-- left carousel-control Finish -->

            <a href="#myCarousel" class="right carousel-control" data-slide="next">
                <!-- left carousel-control Begin -->

                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>

            </a><!-- left carousel-control Finish -->

        </div><!-- carousel slide Finish -->

    </div><!-- col-md-12 Finish -->

</div><!-- container Finish -->

<div id="advantages">
    <!-- #advantages Begin -->

    <div class="container">
        <!-- container Begin -->

        <div class="same-height-row">
            <!-- same-height-row Begin -->

            <div class="col-sm-4">
                <!-- col-sm-4 Begin -->

                <div class="box same-height">
                    <!-- box same-height Begin -->

                    <div class="icon">
                        <!-- icon Begin -->

                        <i class="fa fa-heart"></i>

                    </div><!-- icon Finish -->

                    <h3><a href="#">Best Offer</a></h3>

                    <p>Phục vụ một cách tốt nhất. </p>

                </div><!-- box same-height Finish -->

            </div><!-- col-sm-4 Finish -->

            <div class="col-sm-4">
                <!-- col-sm-4 Begin -->

                <div class="box same-height">
                    <!-- box same-height Begin -->

                    <div class="icon">
                        <!-- icon Begin -->

                        <i class="fa fa-tag"></i>

                    </div><!-- icon Finish -->

                    <h3><a href="#">Best Prices</a></h3>

                    <p>Giá tốt nhất.</p>

                </div><!-- box same-height Finish -->

            </div><!-- col-sm-4 Finish -->

            <div class="col-sm-4">
                <!-- col-sm-4 Begin -->

                <div class="box same-height">
                    <!-- box same-height Begin -->

                    <div class="icon">
                        <!-- icon Begin -->

                        <i class="fa fa-thumbs-up"></i>

                    </div><!-- icon Finish -->

                    <h3><a href="#">100% Original</a></h3>

                    <p>Tự nhiên nhất,không dùng các loại hóa chất.</p>

                </div><!-- box same-height Finish -->

            </div><!-- col-sm-4 Finish -->

        </div><!-- same-height-row Finish -->

    </div><!-- container Finish -->

</div><!-- #advantages Finish -->

<div id="hot">
    <!-- #hot Begin -->

    <div class="box">
        <!-- box Begin -->

        <div class="container">
            <!-- container Begin -->

            <div class="col-md-12">
                <!-- col-md-12 Begin -->

                <h2>
                    Our Latest Products
                </h2>

            </div><!-- col-md-12 Finish -->

        </div><!-- container Finish -->

    </div><!-- box Finish -->

</div><!-- #hot Finish -->

<div id="content" class="container">
    <!-- container Begin -->

    <div class="row">
        <!-- row Begin -->

        <?php
        $num_per_page=8;
        if(isset($_GET["page"]))
        {
            $page=$_GET["page"];
        }
        else
        {
            $page=1;
        }
    
        $start_from=($page-1)*8;
    
        $sql="select * from products order by 1 DESC LIMIT $start_from,$num_per_page";
        $rs_result=mysqli_query($db,$sql);

        getPro();

        $sqll="select * from products";
        $rs_resultt=mysqli_query($db, $sqll);
        $total_records=mysqli_num_rows($rs_resultt);
        $total_pages=ceil($total_records/$num_per_page);

        ?>

        

    </div><!-- row Finish -->
    <div class="text-center" style="margin-bottom: 20px;">
        <?php 
        if($page>1){
            echo "<a href='index.php?page=".($page-1)."' class='btn btn-danger' style='margin-right: 10px'>Previous</a>";
        }

        for($i=1;$i<=$total_pages;$i++){
            echo "<a href='index.php?page=".$i."' class='btn btn-success' style='margin-right: 10px'>".$i."</a>" ;
        }

        if($i>$page){
            echo "<a href='index.php?page=".($page+1)."' class='btn btn-danger'>Next</a>";
        }

        ?>
    </div>
</div><!-- container Finish -->

<?php

include("includes/footer.php");

?>

<script src="js/jquery-331.min.js"></script>
<script src="js/bootstrap-337.min.js"></script>


</body>

</html>