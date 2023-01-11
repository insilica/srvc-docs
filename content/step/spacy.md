---
Title: Spacy
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
      - uses: github:sysrev/srvc-hello#spacy
        labels: [annotation]
```
