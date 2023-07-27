const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'application/json' });
  res.end(JSON.stringify({ msg: 'ok' }));
});

const port = 2333;
server.listen(port, () => {
  console.log(`服务器运行在端口 ${port}`);
});
