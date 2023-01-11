---
title: "PubMed Search"
---

Documents are imported from [PubMed](https://pubmed.ncbi.nlm.nih.gov/) using the [PubMed search step](https://github.com/insilica/srvc-pubmed-search/).
The step follows this format:

```yaml
      - uses: github:insilica/srvc-pubmed-search
        query: "your search terms"
```

The step requires a `query` property to specify the search terms.
All documents that match the query will be imported.
For example, this flow uses a [query](https://pubmed.ncbi.nlm.nih.gov/?term=angry+bees) that matches PubMed articles containing the words "angry bees":

```yaml
reviewer: mailto:user@example.com

flows:
  import-pubmed:
    steps:
      - uses: github:insilica/srvc-pubmed-search
        query: angry bees
```

#### Advanced queries

Advanced queries can be created in the [PubMed Advanced Search Builder](https://pubmed.ncbi.nlm.nih.gov/advanced/).
Build a query in the Builder, and copy the text of the "Query box" into the step's query property.
A [query](https://pubmed.ncbi.nlm.nih.gov/?term=(angry+bees)+AND+(brain)) that matches articles with both "angry bees" and "brain" looks like this:

```yaml
reviewer: mailto:user@example.com

flows:
  import-pubmed:
    steps:
      - uses: github:insilica/srvc-pubmed-search
        query: (angry bees) AND (brain)
```
