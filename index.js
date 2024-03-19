const express = require('express');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.json());

let todos = [];

// Create operation
app.post('/todos', (req, res) => {
  const { title, description } = req.body;
  const newTodo = { id: todos.length + 1, title, description };
  todos.push(newTodo);
  res.status(201).json(newTodo);
});

// Read operation
app.get('/todos', (req, res) => {
  res.status(200).json(todos);
});

// Update operation
app.put('/todos/:id', (req, res) => {
  const { id } = req.params;
  const { title, description } = req.body;
  const todoIndex = todos.findIndex(todo => todo.id == id);
  if (todoIndex !== -1) {
    todos[todoIndex].title = title;
    todos[todoIndex].description = description;
    res.status(200).json(todos[todoIndex]);
  } else {
    res.status(404).json({ error: 'Todo not found' });
  }
});

// Delete operation
app.delete('/todos/:id', (req, res) => {
  const { id } = req.params;
  todos = todos.filter(todo => todo.id != id);
  res.status(204).end();
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(Server running on port ${PORT});
});