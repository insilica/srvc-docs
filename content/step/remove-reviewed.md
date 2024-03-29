---
Title: Remove reviewed
---

This step skips documents that have already been assigned answers by the reviewer.
The step follows this format:

```yaml
      - run-embedded: remove-reviewed
```

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
