# SRVC Documentation and Issues
Use this repository to make SRVC or sysrev.com related feature requests and bug reports.

* [Request a feature](https://github.com/sysrev/srvc-docs/issues/new)  
* [Report a bug](https://github.com/sysrev/srvc-docs/issues/new)

Check existing issues at [github.com/sysrev/srvc-docs/issues](https://github.com/sysrev/srvc-docs/issues)

# Deploy

Deploy by pushing to main branch, or manually with:

```
hugo -D
aws s3 sync public s3://docs.sysrev.com
aws cloudfront create-invalidation --distribution-id EA1FHUI2SBWO4 --paths "/*"
```

# Install

Use nix and direnv, or install manually with homebrew:

1. Install hugo `brew install hugo`
2. Check version `hugo version` should be `hugo v0.101.0+extended linux/amd64`
3. `hugo server` for live server
