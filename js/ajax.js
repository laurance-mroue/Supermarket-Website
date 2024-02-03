$(document).ready(function () {
    $("#loginButton").click(function () {
        $.ajax({
            type: "POST",
            url: "admin_login.php",
            data: $("#loginForm").serialize(),
            success: function (response) {
                if (response === 'success') {
                    alert('Login successful!');
                    header('location:products.php');
                } else {
                    $("#message-container").html('<div class="message"><span>' + response + '</span><i class="fas fa-times" onclick="this.parentElement.remove();"></i></div>');
                }
            },
            error: function () {
                alert('Error occurred. Please try again.');
            }
        });
    });
});