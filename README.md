# Morpht Convivial Recommended Project

[![Continous Integration](https://github.com/morpht/convivial-recommended/actions/workflows/nightly.yml/badge.svg)](https://github.com/morpht/convivial-recommended/actions?query=branch%3Amain)

This is a project template providing a great out-of-the-box experience for new Drupal 10 projects that encapsulates our starting site configuration and basic scaffolding
like settings.php. It is based on the [Drupal Recommended Project](https://github.com/drupal/recommended-project/tree/10.0.x), with the principal difference being the
addition of several modules and packages that provide the best possible out-of-the-box personalization experience.

This project includes the following packages and configuration:
* [Drupal core](https://www.drupal.org/project/drupal)
* [Drupal core scaffold](https://www.drupal.org/docs/develop/using-composer/using-drupals-composer-scaffold)
* [Convivial](https://github.com/morpht/convivial)
* [Drush](https://github.com/drush-ops/drush) (Drupal CLI and development tool)
* [Asset Packagist](https://asset-packagist.org/) repository, package, and configuration
* Best practices for Drupal development, testing and project architcture

## Installation and usage

Create a new project using Composer:
```
composer create-project --no-interaction --stability dev morpht/convivial-recommended myproject
```

Once you create the project, you can and should customize `composer.json` and the rest of the project to suit your needs. You will receive updates from any dependent packages, but not from the project template itself. It's yours to keep!

* Initialize the git in the *newproject* folder
* You should only commit changes to `composer.json` and `composer.lock`. Do not commit files in the `vendor`, `web/core`, and similar directories (these are ignored by the provided `.gitignore` file).

## Local development

* Initialize the project using `lando init` and customize your `.lando.yml` file.
* Install site locally with Convivial installation profile.

## Installation on Pantheon

* Create Drupal 10 site from link here https://docs.pantheon.io/drupal-10.
* Edit drush/sites/pantheon/{project}.site.yml to add there Pantheon site hash instead of %hash%
* Edit repository secrets at github to add there Pantheon git url.
* Upload database from local to pantheon.
* Force push your repository to pantheon git.
* After first push, dev site at Pantheon should be functional.

## References

* [How to write an installation profile](https://www.drupal.org/docs/distributions/creating-distributions/how-to-write-a-drupal-installation-profile)
* [Acquia Drupal recommended project](https://github.com/acquia/drupal-recommended-project)
