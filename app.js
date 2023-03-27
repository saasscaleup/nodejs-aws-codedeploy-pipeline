const express = require("express");
const app = express();
const hostname = "127.0.0.1"; // Your server ip address
const port = 3000;

const version = "3210.27.1.12.3334";

app.get("/", (req, res) => {
  // set response content
  res.send(`<html>
                    <body>
                        <h1 style="color:blue;text-align: center;margin-top: 100px;"> [Version ${version}]<br/> Good Night,Mr.jipx @library,THis is AMAZING!!! EC2 needs to have a profile to do the tasks</h1>
                        <div style="margin: auto;
                        width: 60%;
                        border: 3px solid #73AD21;
                        padding: 10px;">
                            <img src="https://picsum.photos/200/300?random=1" width=100% height=100%;>
                        </div>
                    </body>
                   </html>`);

  console.log(
    `[Version ${version}]: New request => http://${hostname}:${port}` + req.url
  );
});

app.listen(port, () => {
  console.log(
    `[Version ${version}]: Server running at http://${hostname}:${port}/`
  );
});
