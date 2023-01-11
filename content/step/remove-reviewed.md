---
Title: Remove reviewed
---

```yaml
reviewer: mailto:user@example.com

flows:
  review:
    steps:
      - run-embedded: generator sink.jsonl
      
      - run-embeddde: remove-reviewed
```
