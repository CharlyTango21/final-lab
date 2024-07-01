// vulnerable code in src/main.js
import { createServer } from 'vite';

const app = createServer({
  // ...
});

const dbUsername = 'root';
const dbPassword = 'password';

app.get('/db', async (req, res) => {
  const db = mysql.createConnection({
    host: 'localhost',
    user: dbUsername,
    password: dbPassword,
    database: 'mydb',
  });
  // ...
});