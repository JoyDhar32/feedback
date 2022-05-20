<div class="container mt-2">
    <div class="row">
        <h1 style="text-align:center;color:black;padding:15px 0px;">Available FeedBacks</h1>

        <?php
        $project = array();
        $sql = "SELECT *  FROM final_feedback ORDER BY id DESC";
        $result = mysqli_query($connection, $sql);
        if (mysqli_num_rows($result) > 0) {
            // output data of each row
            while ($row = mysqli_fetch_assoc($result)) {
        ?>
                <div class="col-md-4">
                    <div class=" justify-content-center mt-3">
                        <div class="card bg-white">
                            <div class="about-product text-center mt-2"><img src="uploads/<?php echo $row['file']; ?>" width="100%" class="card-img">
                                <div>
                                    <h4><?php echo $row['product_name'] ?></h4>
                                    <h6 class="mt-0 text-black-50">UserName: <span style="color:black;font-weight:bold;"> <?php echo $row['name'] ?> </span></h6>
                                </div>
                            </div>
                            <div class="stats mt-1 p-2">

                                <?php echo $row['product_feedback'] ?>

                            </div>
                            <div class="d-flex justify-content-between total font-weight-bold mt-2 p-1"><span>Total Rating</span>


                                <span>

                                    <?php
                                    if ($row['review'] == 5) {
                                    ?>
                                        <i class="fas fa-star orange"></i><i class="fas fa-star orange"></i><i class="fas fa-star orange"></i> <i class="fas fa-star orange"></i><i class="fas fa-star orange"></i>
                                    <?php
                                    }
                                    ?>

                                    <?php
                                    if ($row['review'] == 4) {
                                    ?>
                                        <i class="fas fa-star orange"></i><i class="fas fa-star orange"></i><i class="fas fa-star orange"></i> <i class="fas fa-star orange"></i><i class="fas fa-star"></i>
                                    <?php
                                    }
                                    ?>

                                    <?php
                                    if ($row['review'] == 3) {
                                    ?>
                                        <i class="fas fa-star orange"></i><i class="fas fa-star orange"></i><i class="fas fa-star orange"></i> <i class="fas fa-star "></i><i class="fas fa-star "></i>
                                    <?php
                                    }
                                    ?>

                                    <?php
                                    if ($row['review'] == 2) {
                                    ?>
                                        <i class="fas fa-star orange"></i><i class="fas fa-star orange"></i><i class="fas fa-star "></i> <i class="fas fa-star "></i><i class="fas fa-star "></i>
                                    <?php
                                    }
                                    ?>

                                    <?php
                                    if ($row['review'] == 1) {
                                    ?>
                                        <i class="fas fa-star orange"></i><i class="fas fa-star "></i><i class="fas fa-star "></i> <i class="fas fa-star "></i><i class="fas fa-star "></i>
                                    <?php
                                    }
                                    ?>

                                </span>



                            </div>
                        </div>
                    </div>
                </div>




            <?php

            }
        } else {
            ?>
            <div class="alert alert-danger my-6">
                <strong>No Reviews!</strong> There are no reviews.
            </div>
        <?php


        }


        ?>

    </div>
</div>