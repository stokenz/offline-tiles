# offline-tiles

Tile server to serve maps completely offline (or self-host)

1. Clone this repo
2. Follow the steps to create your `pmtiles` file named `YOUR_ARCHIVE.pmtiles` https://docs.protomaps.com/guide/getting-started and copy to this directory
3. Build the Dockerfile `docker build -t offline-tiles .`
4. Start the server `docker run -v $(pwd):/data -p 8080:8080 offline-tiles`
5. Make a request https://localhost:8080/tiles/YOUR_ARCHIVE/0/0/0.png
