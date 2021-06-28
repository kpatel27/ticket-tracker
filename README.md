## API Documentation

### Get Started

To get started, run `npm start` from the root directory.

The server will run on `http://localhost:5000/`.


> `POST /flight/create`

### Create Posts Together

URL: `POST http://localhost:5000/post`

#### Request:

| Field  | Required | Description                           |
| ------ | -------- | ------------------------------------- |
| post   | Yes      | Array of post ids for post to create. Must include multiple posts  |

#### Response:

| Field | Description              |
| ----- | ------------------------ |
| id    | Id of newly created post |
