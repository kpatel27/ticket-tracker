# Video Fuse REST API Documentation

The Video Fuse API is used to fuse different videos together and to stream a fused video.

## Getting Started

Run `npm start` from the root directory.

The server will run on `http://localhost:5000/`.

A `merged_videos` directory will be created in the root directory where fused videos will be stored.

## Fuse Videos Together

Fuse 2 or more videos.

Successful requests will return the id of the newly fused video.

The video will be stored in the `merged_videos` directory with a file name of `<id>.mp4`

### POST Endpoint URL

> `http://localhost:5000/video/fused`

### Request JSON body

| Type  | Required | Description                                    |
| ----- | -------- | ---------------------------------------------- |
| Array | Yes      | Array of video ids. Must include 2 or more ids |

### Response

| Type   | Description             |
| ------ | ----------------------- |
| String | Id of newly fused video |

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

Retrieve a fused video as a stream of binary data. Making a GET request on the browser will play the video.

### GET Endpoint URL

> `http://localhost:5000/video/fused/:id`

### Request path parameter

| Name | Required | Description                   |
| ---- | -------- | ----------------------------- |
| id   | Yes      | Id of the fused video to play |

### Response

<Binary Data>

### Example request

> `curl http://localhost:5000/video/6hf4984c-cg9d-8h0c-ag3f-h69e58fy5627 --output -`

### Example response

```
<binary data>
```

## Test

Run `npm test` to run the Jest test suites.
