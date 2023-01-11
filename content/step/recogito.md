---
Title: Recogito
---

```yaml
reviewer: mailto:user@example.com

labels:
  annotation:
    type: webannotation
    question: Annotation

flows:
  import-pubmed:
    steps:
      - run-embedded: html https://raw.githubusercontent.com/sysrev/srvc-hello/main/src/resources/public/recogito.html
        labels: [annotation]
```
