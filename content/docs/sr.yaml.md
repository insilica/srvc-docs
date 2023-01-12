---
title: "sr.yaml: Project configuration"
---

`sr.yaml` is a file in every SRVC project.
It defines the project configuration and the review flows.

Here is a sample `sr.yaml` [from the srvc-template repository](https://github.com/insilica/srvc-template/blob/main/sr.yaml).

```yaml
reviewer: mailto:user@example.com

labels:
  category:
    question: Category
    type: categorical
    categories:
      - A
      - B
      - C

  include:
    question: Include?
    required: true
    type: boolean

flows:
  pubmed-search:
    steps:
      - uses: github:insilica/srvc-pubmed-search
        query: angry bees

  label:
    steps:
      - run-embedded: generator sink.jsonl

      - run-embedded: remove-reviewed

      - run-embedded: label-web
        labels: [include, category]
        port: 5005
```

#### reviewer

Whenever [labels](../../event/label/) are [answered](../../event/label-answer/), the reviewer is recorded as the one providing the answer.
This is often `mailto:` followed by an email address, but it can also be a web address.
For instance, the reviewer could be the URL of a GitHub project that uses a machine learning model to provide answers.

#### labels

This section defines two labels.
The first is a categorical label, which allows a reviewer to select one of several pre-defined answers.
The categories here are just examples with no real meaning.
The second is a boolean label, which can have an answer of either true or false.
In this case, it allows a reviewer to answer whether or not a document is relevant to the project.

#### flows

This section defines two flows. The first uses the [PubMed search step](../../step/pubmed-search/) to import documents. The second allows a reviewer to provide answers for each label and document combination. It uses the [generator step](../../step/generator/) to retrieve existing documents and answers, the [remove-reviewed step](../../step/remove-reviewed/) to skip documents that have already been reviewed, and the [label-web step](../../step/label-web/) to allow the reviewer to assign answers to documents.

#### Usage

Importing documents is done with `sr review pubmed-search` in a terminal.
It only needs to be done once, but can be repeated without harm.
Any new or changed documents will simply be added to the existing documents.

Reviewing documents is done with `sr review label`
You should see the text `Listening on http://127.0.0.1:5005`
Visiting that address will load an interface that shows a document and allows submitting answers for that document.

[**Next >> Collaboration**](../collaboration/)

[**Previous << Getting Started**](../getting-started/)
