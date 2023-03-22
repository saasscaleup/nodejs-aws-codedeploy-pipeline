const express = require('express');
const app = express();
const hostname = '127.0.0.1'; // Your server ip address
const port = 3000;

const version = '5.0.1.12-3334';

app.get('/', (req, res) => {
    // set response content    
        res.send(`<html>
                    <body>
                        <h1 style="color:blue;text-align: center;margin-top: 100px;"> [Version ${version}]<br/> Mr.jipx,THis is AMAZING!!! Like & Subscribe!</h1>
                        <div style="position: relative;
                        width: 400px;
                        height: 200px;
                        border: 3px solid #73AD21;">
                            <img src="https://picsum.photos/400/400?random=1">
                        </div>
                    </body>
                   </html>`);
 
  console.log(`[Version ${version}]: New request => http://${hostname}:${port}`+req.url);

})

app.listen(port, () => {
    console.log(`[Version ${version}]: Server running at http://${hostname}:${port}/`);
})
