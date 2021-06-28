## Video Fuse REST API Documentation

The Video Fuse API is used to fuse videos together and play newly fused videos in the browser.

### Getting Started

Run `npm start` from the root directory.

The server will run on `http://localhost:5000/`.

### Fuse Videos Together

#### Endpoint URL

##### POST `http://localhost:5000/video`

#### Request JSON body

| Type  | Required | Description                                                             |
| ----- | -------- | ----------------------------------------------------------------------- |
| Array | Yes      | Array of video ids for videos to fuse. Must include 2 or more video ids |

#### Response

| Type   | Description                                     |
| ------ | ----------------------------------------------- |
| Object | Object with `id` attribute of newly fused video |

#### Example request

```
curl \
  --request POST \
  --header "Content-Type: application/json" \
  --data '["25ff984c-e79d-460c-a75f-489e58425656","67a702b9-1787-4c4b-bee2-b391806b803d"]'\
  http://localhost:5000/video
```
