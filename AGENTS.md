# Repository Guidelines

## Project Structure

This repository is a FHIR R4 Implementation Guide for USCDI + Sickle Cell Disease.

- `input/fsh/` contains FHIR Shorthand source: profiles, extensions, value sets, code systems, and example instances.
- `input/pagecontent/` contains Markdown narrative pages configured in `sushi-config.yaml`.
- `input/images/` contains diagrams and other static page assets.
- `sushi-config.yaml` defines the IG identity, dependencies, pages, and generated paths.
- `ig.ini` points the IG Publisher to the generated ImplementationGuide resource.
- `fsh-generated/`, `output/`, `temp/`, and `input-cache/` are generated or cached directories and should not be committed.

## Build and Validation

Use Java 17+ and Node.js 18+ with SUSHI installed (`npm install -g fsh-sushi`). Common commands:

```sh
./_genonce.sh             # Run SUSHI and the IG Publisher once
./_build.sh build         # Full build through the project wrapper
./_build.sh nosushi       # Publish existing generated resources
./_build.sh notx          # Build without the terminology server
./_build.sh clean         # Remove generated build output
sushi .                   # Validate FSH and generate FHIR JSON
```

Run `./_build.sh update` when the local Publisher JAR or build scripts are missing. A successful build can still report terminology or QA findings; review `output/qa.html`.

## Style and Naming

Use two-space YAML indentation and clear Markdown headings. Name FSH files by artifact group, for example `SCD_ClinicalData.fsh` and `SCD_ValueSets.fsh`. Keep profile, extension, value set, and instance IDs lowercase and stable once published. Preserve existing FSH executable content and use comments for explanatory notes.

## Testing Guidelines

There is no separate unit-test suite. Treat `sushi .` as the fast validation check and `./_genonce.sh` as the full integration build. Confirm that SUSHI reports zero errors and inspect Publisher QA output before submitting changes.

## Commits and Pull Requests

Use short, imperative commit subjects that describe one change, such as `Fix images URL` or `Update publisher`. Pull requests should explain the FSH or narrative change, identify affected profiles or pages, include validation commands and results, and call out any remaining QA findings. Do not commit generated output, caches, credentials, or publisher JARs.
