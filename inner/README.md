# flux-run-python-flask

Sample Python server written in Flask that you can use to deploy on [FluxRun](https://dashboard.fluxrun.dev).

# To run this locally

```
docker build -t flux-run-python-flask .
docker run -e PORT=32000 -p 32000:32000 -it --rm flux-run-python-flask
```
