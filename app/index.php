<?php

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TASK SCHEDULAR | YOURCREATIVEDEV</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <script src="assets/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/browser-sync@2.29.3/dist/browser-sync.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            let bs = window.BrowserSync || window.___browserSync___;

            if (bs) {
            bs({
                files: ['**/*.php', '**/*.css', '**/*.js'],
                server: true
            });
            } else {
            console.error('BrowserSync script not found or not loaded.');
            }
        });
    </script>


</head>

<body>

    <br /><br /><br /><br />
    <h1>Hello DEVs!</h1>
    <div id="main">
        <h2>WELCOME TO <?php echo phpversion(); ?></h2>
        <br /><br />
        <p>By default, this template uses Poppins font. You can change that in style.css file if you want.</p>
        <br /1>
        <p>The default style.css file is linked and it's path is /assets/css/style.css</p>
        <br />
        <p>The default scripts.js file is linked and it's path is /assets/js/scripts.js | The script file is linked with
            'defer' attribute by default</p>
    </div>

    <?php
        phpinfo();
    ?>
</body>

</html>