---
title: label-web
---

The label-web step provides a web interface for a reviewer to assign answers to documents.
The step follows this format:

```yaml
      - run-embedded: label-web
        labels: [include, category]
        port: 5005
```

The `labels` property defines which labels to show in the interface.

The `port` property sets the port number for the web server to listen on.
It is optional.
If omitted, the server will listen on an arbitrary free port.

Example `sr.yaml`:

```yaml
reviewer: mailto:user@example.com

labels:
  include:
    question: Include?
    required: true
    type: boolean

flows:
  label:
    steps:
      - uses: github:insilica/srvc-pubmed-search
        query: angry bees
      
      - run-embedded: remove-reviewed

      - run-embedded: label-web
        labels: [include]
        port: 5005
```
