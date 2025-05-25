# Automad Package Registry

A _curated_ list of [Automad](https://automad.org) packages that can be installed using the dashboard.

> [!IMPORTANT]
> Currently only packages that contain themes that can be installed using the dashboard are registered here.

## Adding Packages

In order to add a package to registry, the following three steps are required.

### Creating a Public Repository

The theme must be available in a public repository that is supported by [Composer](https://getcomposer.org).

### Registering the Package on Packagist

The public repository must contain a `composer.json` file and must be registered on [packagist.org](https://packagist.org) as a valid Composer package.

### Add Entry to JSON Endpoint

Now the package can be added to this registry by adding a JSON formatted object with the following shape to a [json](https://github.com/automadcms/automad-package-registry/blob/master/public/v2/themes.json) endpoint:

```json
[
  {
    "name": "vendor/package",
    "description": "Description text goes here",
    "thumbnail": "https://domain.com/thumbnail.png",
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

> [!IMPORTANT]
> Please note that the `name` field must match the package name that is used on Packagist!
