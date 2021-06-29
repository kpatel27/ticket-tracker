# Video Fuse REST API Documentation

The Video Fuse API is used to fuse different videos together and to stream a fused video.

## Getting Started

Run `npm start` from the root directory.

The server will run on `http://localhost:5000/`.

## Fuse Videos Together

### POST Endpoint URL

> POST `http://localhost:5000/video`

### Request JSON body

| Type  | Required | Description                                                             |
| ----- | -------- | ----------------------------------------------------------------------- |
| Array | Yes      | Array of video ids for videos to fuse. Must include 2 or more video ids |

### Response

| Type   | Description               |
| ------ | ------------------------- |
| String | uuid of newly fused video |

### Example request

```
curl \
  --request POST \
  --header "Content-Type: application/json" \
  --data '["25ff984c-e79d-460c-a75f-489e58425656","67a702b9-1787-4c4b-bee2-b391806b803d"]'\
  http://localhost:5000/video
```

### Example response

```
"6hf4984c-cg9d-8h0c-ag3f-h69e58fy5627"
```

## Retrieve Fused Video

### GET Endpoint URL

> `http://localhost:5000/video/:id`

### Request path parameter

| Name | Required | Description             |
| ---- | -------- | ----------------------- |
| id   | Yes      | Id of the video to play |

### Response

Returns binary data.

Visiting the endpoint on a browser will play the video.

### Example request

> `curl http://localhost:5000/video/6hf4984c-cg9d-8h0c-ag3f-h69e58fy5627 --output -`

### Example response

```
<binary data>
```

## Test

Run `npm test` to run the Jest test suite
