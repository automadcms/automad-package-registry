# Automad Package Registry

A curated list of Automad packages.

> [!NOTE]
> Currently only packages that contain themes that can be installed using the dashboard are registered here.

## Adding Packages

In order to add a package to registry, the following three steps are required>

### Repository

The theme must be available in a public repository that is supported by Composer.

### Packagist

The public repository must contain a `composer.json` file and must be registered on [packagist.org](https://packagist.org).

### Add Entry to JSON Endpoint

Now the package can be added to this registry by adding a JSON formatted object with the following shape to a `.json` endpoint:

```json
[
  {
    "name": "vendor/package",
    "description": "Description text ...",
    "thumbnail": "https://raw.githubusercontent.com/user/repository/master/thumbnail.png",
    "repository": "https://github.com/user/repository",
    "issues": "https://github.com/user/repository/issues",
    "documentation": "https://github.com/user/repository/blob/master/README.md",
    "authors": [
      {
        "name": "Author Name",
        "homepage": "https://domain.com"
      }
    ]
  }
]
```

> [!NOTE]
> Please note that the `name` field must match the package name that is used on Packagist!
