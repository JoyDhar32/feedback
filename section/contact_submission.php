<?php

if (isset($_POST['submit'])) {
    $name = mysqli_real_escape_string($connection, $_POST['name']);
    $email = mysqli_real_escape_string($connection, $_POST['email']);
    $message = mysqli_real_escape_string($connection, $_POST['message']);

    $to = "joyustcian@gmail.com";
    $subject = "Mail From FeedBack";
    $txt = "Name = " . $name . "\r\n Email = " . $email . "Message =" . $message;
    $headers = "From: infoy@joyustcian.com" . "\r\n" .
        "CC: somebodyelse@example.com";
    if ($email != NULL) {
        mail($to, $subject, $txt, $headers);
    }

    $sql = "INSERT INTO contact(name,email,message) VALUES('$name','$email','$message')";

    $result = mysqli_query($connection, $sql);


    if ($result) {
        $_SESSION['success_message'] = "Contact form saved successfully.";

?>
        <script>
            swal("Message Sent!", "You message has been sent successfully", "success");
        </script>
<?php
    }

    session_destroy();
}
?>