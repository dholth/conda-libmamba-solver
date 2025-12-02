# Package Metadata Directory

This directory is served by nginx to provide package metadata for testing conda-libmamba-solver.

Place your package repository data (e.g., repodata.json files, packages) in this directory to serve them locally during development.

## Example Structure

```
repodata/
├── linux-64/
│   ├── repodata.json
│   └── packages/
├── noarch/
│   ├── repodata.json
│   └── packages/
└── channeldata.json
```

The nginx server will be accessible at http://repo:80 from within the devcontainer network.
