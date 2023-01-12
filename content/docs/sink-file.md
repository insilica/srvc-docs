---
Title: Sink file
---

The sink file stores the [events](../../event/) for an SRVC project.

It is named `sink.jsonl` by default.
The name can be set with the `db` property in [sr.yaml](../sr.yaml/).

It is a [JSON Lines](https://jsonlines.org/) file, with the additional allowance that extra blank lines are ignored.
This is because sink files may be edited manually or with git, where it is easy to introduce spurious blank lines.
