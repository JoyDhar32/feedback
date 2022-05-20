<?php include('connection.php') ?>
<?php include('contact_submission.php') ?>

<div class="container-xxl py-4">
    <div class="row ">
        <div class="col-md-10 offset-md-1 custom_content">
            <h1 style="text-align:center;color:white;padding:15px 0px;">Please Write a Quote</h1>
            <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-6">
                        <label for="name" class="form-label">Name*</label>
                        <input type="text" class="form-control" placeholder="Enter your fullname" name="name" required />
                    </div>
                    <div class="col-md-6">
                        <label for="email" class="form-label">Email*</label>
                        <input type="email" class="form-control" placeholder="Enter Your Email" name="email" required />
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <label for="name" class="form-label">Message*</label>
                        <textarea name="message" id="" cols="30" rows="7" class="form-control" placeholder="Send Me Your Message" required></textarea>
                    </div>

                </div>


                <div class="text-center pt-5 pb-3">
                    <button type="submit" class="btn btn-primary" name="submit">Submit</button>
                </div>

            </form>

        </div>
    </div>

</div>