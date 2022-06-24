const http = require('http');
const url = require('url');

const hostname = '127.0.0.1'; // Your server ip address
const port = 3000;

const version = '1';

const server = http.createServer((req, res) => {
    
    const query_object  = url.parse(req.url, true).query;
    const req_path      = url.parse(req.url, true).pathname;

    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/html');
    
    if (req_path == '/') { //check the URL of the current request

        // set response content    
        res.write(`<html>
                    <body>
                        <h1 style="color:blue;text-align: center;margin-top: 100px;"> [Version ${version}]: This is Home Page!</h1>
                        <div style="position: fixed;top: 50%;left: 50%;transform: translate(-50%, -50%)">
                            <img src="https://picsum.photos/300/300?random=1">
                        </div>
                    </body>
                   </html>`);
        res.end();

    }else if (req_path == "/health") {

        // set response content
        res.write(`<html><body><h1 style="color:green;text-align: center;margin-top: 100px;"> [Version ${version}]: This is Health Check Page!</h1></body></html>`);
        res.end();

    }else if (req_path == '/fibo') { // Incresing server CPU!!!

        let num = query_object.num ? query_object.num : 44;
        // set response content
        res.write(`<html><body><h1 style="color:orange;text-align: center;margin-top: 100px;">[Version ${version}]: Fibo numbers: ${fibo(num)}</h1></body></html>`);
        res.end();

    }else{

        // set Invalid response content
        res.statusCode = 401;
        res.end(`[Version ${version}]: Page Not Found`);
    }

   console.log(`[Version ${version}]: New request => http://${hostname}:${port}`+req.url);
});

// Incresing server CPU!!!
function fibo(n) { 
    if (n < 2)
        return 1;
    else   
        return fibo(n - 2) + fibo(n - 1);
}

server.listen(port, '0.0.0.0', () =>{
    console.log(`[Version ${version}]: Server running at http://${hostname}:${port}/`);
});
