#!  /bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd
sudo service httpd start
sudo echo '<h1>Welcome to devops with terraform shell script -APP-1</h1/> | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app1
sudo echo '<!DOCTYPE html>
<html>

<head>
      <title>HTML Login Form</title>
      <link rel="stylesheet" href="style.css">
</head>

<body>
      <div class="main">
            <h1>html log in code</h1>
            <h3>Enter your login credentials</h3>
            <form action="">
                  <label for="first">
                        Username:
                  </label>
                  <input type="text" 
                         id="first" 
                         name="first" 
                         placeholder="Enter your Username" required>

                  <label for="password">
                        Password:
                  </label>
                  <input type="password"
                         id="password" 
                         name="password"
                         placeholder="Enter your Password" required>

                  <div class="wrap">
                        <button type="submit"
                                onclick="solve()">
                              Submit
                        </button>
                  </div>
            </form>
            <p>Not registered?
                  <a href="#"
                     style="text-decoration: none;">
                        Create an account
                  </a>
            </p>
      </div>
</body>

</html>
' | sudo tee /var/www/html/app1/index.html 
